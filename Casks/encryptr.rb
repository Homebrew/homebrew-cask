cask "encryptr" do
  version "2.0.0"
  sha256 "54e2ef8f8c4d22a20793b68fd35c65f8af34ffd783c48140b84c1a9b445589ea"

  url "https://spideroak.com/dist/encryptr/signed/osx/Encryptr-v#{version}-mac.dmg"
  name "SpiderOak Encryptr"
  homepage "https://spideroak.com/encryptr/"

  livecheck do
    url "https://github.com/SpiderOak/Encryptr/releases"
    strategy :git
  end

  app "Encryptr.app"

  zap trash: [
    "~/Library/Preferences/org.devgeeks.encryptr.plist",
    "~/Library/Saved Application State/org.devgeeks.encryptr.savedState",
  ]
end
