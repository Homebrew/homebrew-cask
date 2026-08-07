cask "sync" do
  version "2.2.61"
  sha256 "8e1d757e4878e8b5df15e80009e82c687c0a0b270f8f3e698a3659d2e9bb7f02"

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
