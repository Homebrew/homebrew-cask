cask "crest" do
  version "6.6.4"
  sha256 "ff0cfd728e7f2efa1ceb07688ebd148e754295b5bd161e1e2742e26f1a1a6482"

  url "https://crestnotch.app/downloads/Crest-#{version}.dmg"
  name "Crest"
  desc "Notch utility with widgets"
  homepage "https://crestnotch.app/"

  livecheck do
    url "https://crestnotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "crest-browser"
  depends_on macos: :sonoma

  app "Crest.app"

  zap trash: [
    "~/.copilot/hooks/crest.json",
    "~/Library/Application Scripts/com.zack40x.crest.safari",
    "~/Library/Application Scripts/SA6A94K2Y4.com.zack40x.crest",
    "~/Library/Application Support/Crest",
    "~/Library/Caches/com.zack40x.crest",
    "~/Library/Containers/com.zack40x.crest.safari",
    "~/Library/Group Containers/SA6A94K2Y4.com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest",
    "~/Library/HTTPStorages/com.zack40x.crest.binarycookies",
    "~/Library/Preferences/com.zack40x.crest.plist",
    "~/Library/Preferences/crest.spaces.detached.plist",
    "~/Library/WebKit/com.zack40x.crest",
  ]
end
