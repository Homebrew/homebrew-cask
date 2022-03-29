cask "google-earth-pro" do
  version "7.3.4.8573"
  sha256 :no_check

  url "https://dl.google.com/earth/client/advanced/current/GoogleEarthProMac-Intel.dmg"
  name "Google Earth Pro"
  desc "Virtual globe"
  homepage "https://www.google.com/earth/"

  pkg "Install Google Earth Pro #{version}.pkg"

  # Some launchctl and pkgutil items are shared with other Google apps, they should only be removed in the zap stanza
  # See: https://github.com/Homebrew/homebrew-cask/pull/92704#issuecomment-727163169
  # launchctl: com.google.keystone.daemon, com.google.keystone.system.agent, com.google.keystone.system.xpcservice
  # pkgutil: com.google.pkg.Keystone
  uninstall pkgutil:  "com.Google.GoogleEarthPro"

  zap trash:     [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthpro.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.googleearthupdatehelper.sfl*",
    "~/Library/Application Support/Google Earth",
    "~/Library/Caches/Google Earth",
    "~/Library/Caches/com.Google.GoogleEarthPro",
  ],
      launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.system.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.xpcservice",
        "com.google.keystone.system.xpcservice",
      ],
      pkgutil:   [
        "com.google.pkg.Keystone",
      ]
end
