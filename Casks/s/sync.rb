cask "sync" do
  version "2.2.45"
  sha256 "7cd7e39b8a57a018f19e670c01241fca16f412d71267f132165aa85334f1f81d"

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
