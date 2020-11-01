cask "spitfire-audio" do
  version "3.2.16"
  sha256 "b9f9dfb82415188ccc34920709f0f50438689a3639d2e0324fa941c237733170"

  url "https://www.spitfireaudio.com/library-manager/download/mac/"
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
