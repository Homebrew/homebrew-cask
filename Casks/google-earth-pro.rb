cask "google-earth-pro" do
  version "7.3.3.7786"
  sha256 "89e6ae146d27ab61f2293c570a33894df3786b5589cbc0f20d691afb766c28bc"

  url "https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg"
  name "Google Earth Pro"
  desc "Virtual globe"
  homepage "https://www.google.com/earth/"

  pkg "Install Google Earth Pro #{version}.pkg"

  uninstall pkgutil:   [
    "com.Google.GoogleEarthPro",
    "com.google.pkg.Keystone",
  ],
            launchctl: [
              "com.google.keystone.agent",
              "com.google.keystone.system.agent",
              "com.google.keystone.daemon",
              "com.google.keystone.xpcservice",
              "com.google.keystone.system.xpcservice",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl*",
    "~/Library/Application Support/Google Earth",
    "~/Library/Caches/Google Earth",
    "~/Library/Caches/com.Google.GoogleEarthPro",
  ]
end
