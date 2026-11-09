cask "emeet-studio" do
  version "2.0.5,20261030_103517"
  sha256 "c5c607ba19debdf6ff496464c4346135aecaadc9443eb925c2d18155c5859fcb"

  url "https://emeetstudio.s3.us-west-2.amazonaws.com/emeet_studio#{version.major}/EMEET_STUDIO_V#{version.csv.first}_intl_mac_#{version.csv.second}.pkg"
  name "EMEET STUDIO"
  desc "Companion app for EMEET webcams"
  homepage "https://emeet.com/pages/software-service-downloads"

  livecheck do
    url "https://emeetstudio.s3.us-west-2.amazonaws.com/emeet_studio#{version.major}/device_upgrade_EMEETSTUDIO_#{version.major}.json"
    regex(/EMEET[._-]STUDIO[._-]v?(\d+(?:\.\d+)+)[._-]intl[._-]mac[._-](\d+(?:_\d+)*)\.pkg/i)
    strategy :json do |json, regex|
      match = json.dig("platforms", "mac", "intl", "url")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  pkg "EMEET_STUDIO_V#{version.csv.first}_intl_mac_#{version.csv.second}.pkg",
      choices: [
        {
          "choiceIdentifier" => "install",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  # The app activates a camera system extension, which can't be uninstalled
  # automatically yet. Once that's possible, use:
  # `systemextensionsctl uninstall RYV39G6US3 com.emeet.studio.next.mac-camera-extension`
  uninstall quit:    "com.emeet.studio.next",
            pkgutil: [
              "com.emeet.studio.next",
              "com.eMeet.VirtualAudio.next",
            ]

  zap trash: [
    "~/Library/Application Support/EMEET STUDIO",
    "~/Library/Caches/EMEET STUDIO",
    "~/Library/Containers/com.emeet.studio.next.mac-camera-extension",
    "~/Library/Group Containers/RYV39G6US3.com.emeet.studio.next",
    "~/Library/Logs/EMEET STUDIO",
    "~/Library/Saved Application State/com.emeet.studio.next.savedState",
  ]
end
