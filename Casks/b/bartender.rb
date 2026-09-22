cask "bartender" do
  version "7.0.4"
  sha256 "dd4d4eb20d0b0a9549ab182832149e42ee140e65737e91ce4db69d30be058fbf"

  url "https://downloads.macbartender.com/Bartender#{version.major}/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip"
  name "Bartender"
  desc "Menu bar icon organiser"
  homepage "https://www.macbartender.com/"

  livecheck do
    url "https://downloads.macbartender.com/Bartender#{version.major}/updates/AppcastB#{version.major}.xml"
    regex(%r{/v?(\d+(?:[.-]\d+)+)/Bartender%20#{version.major}\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  auto_updates true
  depends_on macos: :sonoma

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
    "~/Library/Application Scripts/24J875RH8J.com.surteesstudios.Bartender",
    "~/Library/Application Support/Bartender #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.surteesstudios.bartender.sfl*",
    "~/Library/Application Support/com.surteesstudios.Bartender.revenuecat",
    "~/Library/Caches/com.surteesstudios.Bartender",
    "~/Library/Caches/com.surteesstudios.Bartender.revenuecat",
    "~/Library/Cookies/com.surteesstudios.Bartender.binarycookies",
    "~/Library/Group Containers/24J875RH8J.com.surteesstudios.Bartender",
    "~/Library/HTTPStorages/com.surteesstudios.Bartender",
    "~/Library/Preferences/com.surteesstudios.Bartender.plist",
  ]
end
