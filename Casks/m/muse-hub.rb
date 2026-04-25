cask "muse-hub" do
  version "3.0.2"
  sha256 :no_check
  url "https://muse-cdn.com/Muse_Hub.pkg"
  name "Muse Hub"
  desc "Platform for indy music & audio tools"
  homepage "https://www.musehub.com/"
  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "Muse_Hub.pkg"

  uninstall quit:    "com.muse.musehub",
            pkgutil: "com.muse.hub.pkg"

  zap trash: [
    "~/Library/Application Support/Muse Hub",
    "~/Library/Caches/com.muse.musehub",
    "~/Library/Caches/SentryCrash/Muse Hub",
    "~/Library/Logs/com.muse.musehub",
    "~/Library/Logs/Muse Hub",
    "~/Library/HTTPStorages/com.muse.musehub.binarycookies",
    "~/Library/Preferences/com.muse.musehub.plist",
    "~/Library/HTTPStorages/com.muse.musehub",
  ]
end
