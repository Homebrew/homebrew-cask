cask "insta360-studio" do
  version "5.2.0,RC_build30,84acf671bafadec72df1d4df6dc7d2d2,20240612_173040_signed_1718184717294"
  sha256 "5ba0f747de63a6d937c83e4d2e990e04e5b3890b20e7cd5fdb7f84ba8731e77d"

  url "https://file.insta360.com/static/#{version.csv.third}/Insta360Studio_#{version.csv.first}(#{version.csv.second})_#{version.csv.fourth}.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    regex(%r{
      /(\h+)/
      Insta360(?:%20)?Studio
      (?:[._-]|%20)(?:\d+(?:\.\d+)+)
      (?:[._-]?\(([^)]+?)\))?
      [._-](\d+(?:[._-](?:\d+|signed))*)
      \.pkg
    }ix)
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

      "#{version},#{match[2]},#{match[1]},#{match[3]}#{",#{match[4]}" if match[4].present?}"
    end
  end

  pkg "Insta360Studio_#{version.csv.first}(#{version.csv.second})_#{version.csv.fourth}.pkg"

  uninstall quit:    "com.insta360.studio",
            pkgutil: [
              "com.insta360.insta360Studio",
              "com.insta360.PremierePlugin",
              "com.insta360.ThumbnailPlugin",
            ],
            delete:  "/Applications/Insta360 Studio #{version.csv.third.split("_")[0]}.app"

  zap trash: [
    "~/Library/Application Support/Insta360",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.studio",
    "~/Library/Caches/Insta360",
    "~/Library/Saved Application State/com.insta360.studio.savedState",
  ]
end
