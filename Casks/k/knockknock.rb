cask "knockknock" do
  version "4.0.2"
  sha256 "430da40b259c78ead1f73533b4a29f2b5f2b10d9b6618b574b8ade36eaef0604"

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
