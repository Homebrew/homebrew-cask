cask "sync" do
  version "2.2.62"
  sha256 "458960bfed82fe409aae2727b4e122caa92388745c9deb74266066f25408a3cd"

  url "https://www10.sync.com/download/apple/Sync-#{version}.dmg"
  name "Sync"
  desc "Store, share and access files from anywhere"
  homepage "https://www.sync.com/"

  livecheck do
    url "https://www.sync.com/install/"
    regex(/href=.*?Sync[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "Sync.app"

  uninstall quit: "com.sync.desktop"

  zap trash: [
        "~/Library/Application Scripts/com.sync.desktop",
        "~/Library/Application Scripts/com.sync.desktop.findersync",
        "~/Library/Group Containers/com.sync.desktop",
        "~/Library/Preferences/com.sync.desktop.plist",
      ],
      rmdir: "~/Sync"
end
