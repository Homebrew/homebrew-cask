cask "bartender" do
  version "6.1.0"
  sha256 "43fbb966da59fe890eb5e4ff06b3bddc3e8062c7952cc737ec979ca7d680d332"

  url "https://www.macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.dmg"
  name "Bartender"
  desc "Menu bar icon organiser"
  homepage "https://www.macbartender.com/"

  livecheck do
    url "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
    regex(%r{/v?(\d+(?:[.-]\d+)+)/Bartender%20#{version.major}\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Bartender #{version.major}.app"

  uninstall launchctl: "com.surteesstudios.Bartender.BartenderInstallHelper",
            quit:      "com.surteesstudios.Bartender",
            delete:    [
              "/Library/Audio/Plug-Ins/HAL/BartenderAudioPlugIn.plugin",
              "/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper",
              "/Library/ScriptingAdditions/BartenderHelper.osax",
              "/System/Library/ScriptingAdditions/BartenderSystemHelper.osax",
            ]

  zap trash: [
    "~/Library/Caches/com.surteesstudios.Bartender",
    "~/Library/Cookies/com.surteesstudios.Bartender.binarycookies",
    "~/Library/Preferences/com.surteesstudios.Bartender.plist",
  ]
end
