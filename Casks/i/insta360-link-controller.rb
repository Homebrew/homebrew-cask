cask "insta360-link-controller" do
  version "2.2.1,build23,9bf17c8d9cde4522b3f691715d9da043"
  sha256 "a5c841d6b31472722f2cca247a279ed5a317c7017a9ec84f8e4f45237f2fd6ac"

  url "https://wassets.insta360.com/common/#{version.csv.third}/Insta360LinkController_#{version.csv.first}(#{version.csv.second}).pkg"
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
