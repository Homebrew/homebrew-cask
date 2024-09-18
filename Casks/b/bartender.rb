cask "bartender" do
  on_ventura :or_older do
    version "4.2.25"
    sha256 "f1a2ecf300cf56aaf531324cba646442026cb0b63b4f90f46a1aee5b0804688a"
  end
  on_sonoma :or_newer do
    version "5.1.5"
    sha256 "973fe0c9807ef292ee250506471bc6e33b00c69f60dd2b1bb17972c704042b3b"
  end

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip"
  name "Bartender"
  desc "Menu bar icon organiser"
  homepage "https://www.macbartender.com/"

  livecheck do
    url "https://www.macbartender.com/B2/updates/AppcastB#{version.major}.xml"
    regex(%r{https://macbartender.com/B2/updates/(\d+(?:-\d+)+)/Bartender%20#{version.major}.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
