cask "bartender" do
  if MacOS.version <= :el_capitan
    version "2.1.6"
    sha256 "013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5"
    url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
        referer: "https://www.macbartender.com"
  elsif MacOS.version <= :catalina
    version "3.1.25,31125"
    sha256 "bd31aa2aab3262ed08f5c421d504b82893b5dfc546f37fc98eae23bc47494c8a"
    url "https://macbartender.com/B2/updates/#{version.csv.first.dots_to_hyphens}/Bartender%20#{version.major}.zip",
        referer: "https://www.macbartender.com"
  else
    version "4.2.12,42012"
    sha256 "29172e0546cea611d4c61ad710cece46550a3272c789ba512371af7a1090025f"
    url "https://macbartender.com/B2/updates/#{version.csv.first.major}-#{version.csv.first.minor}-#{version.csv.first.patch.rjust(1, "0")}/Bartender%20#{version.major}.dmg",
        referer: "https://www.macbartender.com"
  end

  name "Bartender"
  desc "Menu bar icon organizer"
  homepage "https://www.macbartender.com/"

  livecheck do
    url "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

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
