cask "knockknock" do
  version "2.4.0"
  sha256 "071953f07bcb6285779fce2ffaf49e38d97cb62f2061ed360285dd548740698a"

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
