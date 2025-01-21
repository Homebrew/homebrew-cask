cask "insta360-studio" do
  version "5.5.0,97c6576afb0adb8b9affbe8e635614a9,release_insta360,RC_build46,_20250120_121455_signed_1737346578362"
  sha256 "edfc8cc311973bdb4fd2f3170f53999d1a1c62b397fd959107a32971baf1098d"

  url "https://file.insta360.com/static/#{version.csv.second}/Insta360Studio_#{version.csv.first}_#{version.csv.third}(#{version.csv.fourth})#{version.csv.fifth}.pkg"
  name "Insta360 Studio"
  desc "Video and photo editor"
  homepage "https://www.insta360.com/"

  # The filename format can fluctuate between versions, so we have to include
  # any text that may vary in the cask `version`. However, some filenames
  # include parentheses and we can't include those characters in the cask
  # `version`, so we have to chunk the text to work around this limitation.
  # NOTE: We simply follow what upstream presents as the newest version and
  # that may be beta, RC, etc.
  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-go2&X-Language=en-us"
    regex(%r{/(\h+)/Insta360(?:%20)?Studio(?:[._-]|%20)v?(?:\d+(?:\.\d+)+)[._-](.+)\.pkg}i)

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

      "#{version},#{match[1]},#{match[2].tr("()", ",")}"
    end
  end

  pkg "Insta360Studio_#{version.csv.first}_#{version.csv.third}(#{version.csv.fourth})#{version.csv.fifth}.pkg"

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
