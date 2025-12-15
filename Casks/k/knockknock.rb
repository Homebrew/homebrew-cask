cask "knockknock" do
  version "4.0.0"
  sha256 "fa2a0ffa757c2f266a853dffc4a20dc8ec0733716959dc1a5e61d84789f30145"

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
