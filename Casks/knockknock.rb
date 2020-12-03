cask "knockknock" do
  version "2.1.1"
  sha256 "c3293e6f6524b557246a9c5e06a1fb2eb3f49be2297fe671d0fa8fca7aa142fa"

  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  appcast "https://objective-see.com/products/changelogs/KnockKnock.txt"
  name "KnockKnock"
  desc "Tool to show what is persistently installed on the computer"
  homepage "https://objective-see.com/products/knockknock.html"

  app "KnockKnock.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.KnockKnock",
    "~/Library/Preferences/com.objective-see.KnockKnock.plist",
    "~/Library/Saved Application State/com.objective-see.KnockKnock.savedState",
  ]
end
