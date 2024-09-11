cask "insta360-studio" do
  version "5.2.6,517380a56c41c1529f687877c44a027b,beta2_insta360,RC_build5,_20240828_151213"
  sha256 "ac0bf7d7f7ec9c4f2225ae0d30202c53475f5ba82fa29d8dcb79e36970e27532"

  url "https://file.insta360.com/static/#{version.csv.second}/Insta360%20Studio_#{version.csv.first}_#{version.csv.third}(#{version.csv.fourth})#{version.csv.fifth}_signed.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  # The download URL flucuates between versions, so capture a majority of the url string in the version
  # the url includes `()` characters which cannot be used in a version, so split at these characters
  # versions can include the string "beta" or "rc" but are sourced from what is distributed upstream
  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    regex(%r{/(\h+)/Insta360(?:%20)?Studio(?:[._-]|%20)v?(?:\d+(?:\.\d+)+)[._-](.+)[._-]signed\.pkg}i)

    strategy :json do |json, regex|
      # Find the Insta360 Studio app
      app = json.dig("data", "apps")&.find { |item| item["app_id"] == 38 }
      next if app.blank?

      # Find the newest macOS version
      newest_release = app["items"]&.select { |item| item["platform"] == "mac" }
                                   &.max_by { |item| Version.new(item["version"]) }
      next if newest_release.blank?

      # Find the channel item (there's likely only one object in the array)
      channel = newest_release["channels"]&.find { |item| item["channel"] == "official" }
      next if channel.blank?

      # Collect the version parts
      version = newest_release["version"]
      match = channel["download_url"]&.match(regex)
      next if version.blank? || match.blank?

      "#{version},#{match[1]},#{match[2].split(/[()]/).join(",")}"
    end
  end

  pkg "Insta360 Studio_#{version.csv.first}_#{version.csv.third}(#{version.csv.fourth})#{version.csv.fifth}_signed.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.insta360Studio",
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
            ]

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Caches/Insta360",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
