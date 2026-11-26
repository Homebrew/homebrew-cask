cask "insta360-wave-controller" do
  version "1.1.0,build7,_20261008_101106_signed_1791425478377,85661444411946edb17399282f5b0683"
  sha256 "f63958145e6d658a0296f6232c7776712f7dc525d85da11f5d632df49fd2fe1d"

  build_suffix = version.csv.third if version.csv.length > 3
  url "https://wassets.insta360.com/common/#{version.csv.last}/Insta360WaveController_#{version.csv.first}(#{version.csv.second})#{build_suffix}.pkg"
  name "Insta360 Wave Controller"
  desc "Controller for Insta360 Wave devices"
  homepage "https://www.insta360.com/download/insta360-wave"

  livecheck do
    url "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-wave&X-Language=en-us"
    regex(%r{/(\h+)/Insta360(?:[._-]|%20)?WaveController(?:[._-]|%20)v?(\d+(?:\.\d+)+)\((build\d+)\)(.*?)\.pkg}i)
    strategy :json do |json, regex|
      # Find the Insta360 Wave Controller app
      app = json.dig("data", "apps")&.find { |item| item["app_id"] == 144 }
      next if app.blank?

      # Find the newest macOS version
      newest_release = app["items"]&.select { |item| item["platform"] == "mac" }
                                   &.max_by { |item| Version.new(item["version"]) }
      next if newest_release.blank?

      # Find the channel item (there's likely only one object in the array)
      channel = newest_release["channels"]&.find { |item| item["channel"] == "official" }
      next if channel.blank?

      match = channel["download_url"]&.match(regex)
      next unless match

      "#{match[2]},#{match[3]},#{match[4]},#{match[1]}".gsub(/,{2,}/, ",")
    end
  end

  auto_updates true
  depends_on :macos

  pkg "Insta360WaveController_#{version.csv.first}(#{version.csv.second})#{build_suffix}.pkg"

  uninstall launchctl: "com.insta360.Wavecontroller",
            quit:      "com.insta360.Wavecontroller",
            pkgutil:   "com.insta360.Psp"

  zap trash: [
        "~/Library/Application Support/Insta360 Wave Controller",
        "~/Library/Application Support/Insta360/Insta360 Wave Controller",
        "~/Library/Caches/Insta360 Wave Controller",
      ],
      rmdir: "~/Library/Application Support/Insta360"
end
