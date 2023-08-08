cask "knockknock" do
  version "2.4.2"
  sha256 "9205a8aa6d5e857767a2fe05fa4e1c7f6eef4b533a3a63d4793ac2ca38d0574b"

  url "https://github.com/objective-see/KnockKnock/releases/download/v#{version}/KnockKnock_#{version}.zip",
      verified: "github.com/objective-see/KnockKnock/"
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
