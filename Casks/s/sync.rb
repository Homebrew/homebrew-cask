cask "sync" do
  version "2.2.40"
  sha256 "c2b7cb6c8222c7ab96d030246c889afb1e117b25b9914408cc9d9debd5ce7b75"

  url "https://www.sync.com/download/apple/Sync-#{version}.dmg"
  name "Sync"
  desc "Store, share and access files from anywhere"
  homepage "https://www.sync.com/"

  livecheck do
    url "https://www.sync.com/install/"
    regex(/href=.*?Sync[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

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
