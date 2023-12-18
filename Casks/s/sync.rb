cask "sync" do
  version "2.2.27"
  sha256 :no_check

  url "https://www.sync.com/download/apple/Sync.dmg"
  name "Sync"
  desc "Store, share and access files from anywhere"
  homepage "https://www.sync.com/"

  livecheck do
    url "https://www.sync.com/install/"
    regex(/(\d+(?:\.\d+)+)\n.*release\s*notes/i)
  end

  app "Sync.app"

  zap trash: [
        "~/Library/Application Scripts/com.sync.desktop",
        "~/Library/Application Scripts/com.sync.desktop.findersync",
        "~/Library/Group Containers/com.sync.desktop",
        "~/Library/Preferences/com.sync.desktop.plist",
      ],
      rmdir: "~/Sync"
end
