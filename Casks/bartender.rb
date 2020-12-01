cask "bartender" do
  if MacOS.version <= :el_capitan
    version "2.1.6"
    sha256 "013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5"
    url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
        referer: "https://www.macbartender.com"
    appcast "https://www.macbartender.com/B2/updates/Appcast.xml"
  elsif MacOS.version <= :catalina
    version "3.1.25"
    sha256 "bd31aa2aab3262ed08f5c421d504b82893b5dfc546f37fc98eae23bc47494c8a"
    url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
        referer: "https://www.macbartender.com"
    appcast "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
  else
    version "4.0.28"
    sha256 "b659ed514788b220b28d07bf9800fe40bc0c8b2bbabc11522f07104df298f578"
    url "https://macbartender.com/B2/updates/B4Latest/Bartender%20#{version.major}.dmg",
        referer: "https://www.macbartender.com"
    appcast "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
  end

  name "Bartender"
  desc "Menu bar icon organizer"
  homepage "https://www.macbartender.com/"

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
