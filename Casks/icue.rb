cask "icue" do
  version "4.22.203"
  sha256 "526c4d4b220d83574c80a320a9b94d9a06aa67182054fa4933e7b22805ee4d65"

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  name "iCUE"
  desc "Orchestrate compatible CORSAIR peripherals"
  homepage "https://www.corsair.com/uk/en/icue-mac"

  livecheck do
    url "https://www.corsair.com/uk/en/downloads"
    strategy :page_match do |page|
      match = page.match(%r{(?<=data-url="https://downloads.corsair.com/Files/CUE/iCUE-)(\d+(?:\.\d+)+)(?=-release.dmg)}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  auto_updates true

  pkg "iCUE.pkg"

  uninstall quit:      "com.corsair.cue",
            launchctl: [
              "CorsairAudioConfigService",
              "iCUELaunchAgent",
              "com.corsair.AudioConfigService.System",
              "com.corsair.cue.3.launchHelper",
            ],
            pkgutil:   [
              "com.corsair.CorsairAudio",
              "com.corsair.cue.3",
            ],
            delete:    [
              "/Applications/Corsair/iCUE.app",
              "/Applications/Corsair/iCUEUninstaller.app",
            ]

  zap trash: [
    "~/Library/Application Support/Corsair/",
    "~/Library/Preferences/com.corsair.cue.3.plist",
    "~/Library/Saved Application State/com.corsair.cue.3.savedState",
  ]
end
