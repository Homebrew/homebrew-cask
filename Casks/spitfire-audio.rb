cask "spitfire-audio" do
  version "3.2.16"
  sha256 "b9f9dfb82415188ccc34920709f0f50438689a3639d2e0324fa941c237733170"

  # d1t3zg51rvnesz.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/1601024400/mac/SpitfireAudio-Mac-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.spitfireaudio.com/library-manager/download/mac/"
  name "Spitfire Audio"
  desc "Downloade manager for Spitfire audio libraries"
  homepage "https://www.spitfireaudio.com/info/library-manager/"

  app "Spitfire Audio.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.spitfireaudio.LibraryManagerHelper.plist",
    "/Library/Logs/Spitfire Audio",
    "/Library/PrivilegedHelperTools/com.spitfireaudio.LibraryManagerHelper",
  ]

  zap delete: [
    "~/Library/Caches/com.spitfireaudio.spitfireaudio",
    "~/Library/Preferences/com.spitfireaudio.spitfireaudio.plist",
  ]
end
