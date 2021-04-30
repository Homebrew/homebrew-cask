cask "knockknock" do
  version "2.3.0"
  sha256 "140f5f3c6d02541bed685810cb4c6916231fe2385ad749dd4856e7c9f2dcd05c"

  url "https://github.com/objective-see/KnockKnock/releases/download/v#{version}/KnockKnock_#{version}.zip",
      verified: "github.com/objective-see/KnockKnock/"
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
