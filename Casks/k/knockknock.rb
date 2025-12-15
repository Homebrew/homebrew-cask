cask "knockknock" do
  version "4.0.1"
  sha256 "e3fd23716a9661fac218258ab33854b95fb81ddd4ce96d224667fcb3303fe28b"

  url "https://github.com/objective-see/KnockKnock/releases/download/v#{version}/KnockKnock_#{version}.zip",
      verified: "github.com/objective-see/KnockKnock/"
  name "KnockKnock"
  desc "Tool to show what is persistently installed on the computer"
  homepage "https://objective-see.org/products/knockknock.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KnockKnock.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.KnockKnock",
    "~/Library/Preferences/com.objective-see.KnockKnock.plist",
    "~/Library/Saved Application State/com.objective-see.KnockKnock.savedState",
  ]
end
