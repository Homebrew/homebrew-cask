cask "bartender" do
  version "4.2.21"
  sha256 "28be16cbc69d1a2626c5a0e4846263c286d4e6cce95b68fb39b807ca9d360e8c"

  url "https://macbartender.com/B2/updates/#{version.major}-#{version.minor}-#{version.patch.rjust(1, "0")}/Bartender%20#{version.major}.dmg",
      referer: "https://www.macbartender.com"
  name "Bartender"
  desc "Menu bar icon organizer"
  homepage "https://www.macbartender.com/"

  livecheck do
    url "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bartender #{version.major}.app"

  uninstall delete:    [
              "/Library/Audio/Plug-Ins/HAL/BartenderAudioPlugIn.plugin",
              "/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper",
              "/Library/ScriptingAdditions/BartenderHelper.osax",
              "/System/Library/ScriptingAdditions/BartenderSystemHelper.osax",
            ],
            launchctl: "com.surteesstudios.Bartender.BartenderInstallHelper",
            quit:      "com.surteesstudios.Bartender"

  zap trash: [
    "~/Library/Caches/com.surteesstudios.Bartender",
    "~/Library/Cookies/com.surteesstudios.Bartender.binarycookies",
    "~/Library/Preferences/com.surteesstudios.Bartender.plist",
  ]
end
