cask "spitfire-audio" do
  version "3.2.17,1605696000"
  sha256 "8a61a597f58dec65426a49c30da2bb9977e778233d18df9eceb3e8e6bc27be3b"

  # d1t3zg51rvnesz.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/#{version.after_comma}/mac/SpitfireAudio-Mac-#{version.before_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.spitfireaudio.com/library-manager/download/mac/"
  name "Spitfire Audio"
  desc "Downloade manager for Spitfire audio libraries"
  homepage "https://www.spitfireaudio.com/info/library-manager/"

  auto_updates true

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
