cask "insta360-link-controller" do
  version "2.0.6,build6,72fc6ee5e25db0752bba3b7c0484e4f5"
  sha256 "0a63260a01a7a083dc5253bbb613d04c18e8ba77cb53e6c5da2c6cfef64b47e9"

  url "https://file.insta360.com/static/#{version.csv.third}/Insta360LinkController_#{version.csv.first}(#{version.csv.second}).pkg"
  name "Insta360 Link Controller"
  desc "Controller for Insta360 webcams"
  homepage "https://www.insta360.com/"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-link&X-Language=en-us"
    regex(%r{/(\h+)/Insta360LinkController_\d+\.\d+\.\d+\((build\d+)\)\.pkg}i)

    strategy :json do |json, regex|
      # Find the Insta360 Link Controller app
      app = json.dig("data", "apps")&.find { |item| item["app_id"] == 100 }
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

      "#{version.split("_").first},#{match[2]},#{match[1]}"
    end
  end

  pkg "Insta360LinkController_#{version.csv.first}(#{version.csv.second}).pkg"

  uninstall quit:    "com.insta360.linkcontroller",
            pkgutil: "com.insta360.webcam"

  zap trash: [
    "~/Library/Application Support/Insta360/Insta360 Link Controller",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.insta360.linkcontroller",
    "~/Library/Caches/Insta360/Insta360 Link Controller",
    "~/Library/Saved Application State/com.insta360.linkcontroller.savedState",
  ]
end
