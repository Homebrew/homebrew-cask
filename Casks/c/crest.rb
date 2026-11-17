cask "crest" do
  version "6.9.6"
  sha256 "f92665d40808d46853a3a2f88b5e526261b5cfc033be76a61e7bff7aeb23a2f1"

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
