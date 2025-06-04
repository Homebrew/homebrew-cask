cask "halion-sonic" do
  version "7.1.40,d088d1e6-5a2d-4a05-be91-e59860cf6f16"
  sha256 "55e4a6ef615a385d2699f52cac0b83456bd681d9a24f8164b710f692f750b1ff"

  url "https://download.steinberg.net/automated_updates/sda_downloads/#{version.csv.second}/Halion_Sonic_#{version.csv.first}_Installer_mac.dmg"
  name "HALion Sonic"
  desc "Player for sample libraries, synthesizers and hybrid instruments"
  homepage "https://www.steinberg.net/vst-instruments/halion/sonic/"

  livecheck do
    url "https://o.steinberg.net/en/support/downloads/halion_sonic_#{version.csv.first.major}.html"
    regex(%r{href=.*?downloads/([^/]+)/Halion[._-]Sonic[._-]v?(\d+(?:\.\d+)+)[._-]Installer[._-]mac\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on cask: [
    "steinberg-activation-manager",
    "steinberg-library-manager",
    "steinberg-mediabay",
  ]
  depends_on macos: ">= :big_sur"

  pkg "HALion_Sonic_Installer.pkg"

  uninstall quit:    [
              "com.steinberg.baios",
              "com.steinberg.CoreAudio2ASIO",
              "com.steinberg.vst3.HALionSonicStandalone",
              "com.steinberg.vst3.metronome",
            ],
            pkgutil: [
              "com.steinberg.HALionSonic",
              "com.steinberg.HALionSonic.*",
              "com.steinberg.vst3.HALionSonicStandalone.halionsonic",
              "net.steinberg.HALionSonicdependencies",
              "net.steinberg.vstsound.*",
              "net.steinberg.vstsounds.halionresources",
            ],
            delete:  "/Applications/HALion Sonic.app"

  zap trash: [
    "/Library/Application Support/Avid/Audio/Plug-Ins/Steinberg/HALionSonic.aaxplugin",
    "/Library/Application Support/Steinberg/Content/HALion",
    "/Library/Application Support/Steinberg/dependencies/HALionSonic.dependencies",
    "/Library/Audio/Plug-Ins/Components/HALion Sonic.component",
    "/Library/Audio/Plug-Ins/VST3/Steinberg/HALion Sonic.vst3",
    "~/Library/Audio/Presets/Steinberg Media Technologies/HALion Sonic",
    "~/Library/Preferences/HALion Sonic Standalone",
    "~/Library/Preferences/HALion Sonic",
    "~/Library/Saved Application State/com.steinberg.vst3.HALionSonicStandalone.savedState",
  ]
end
