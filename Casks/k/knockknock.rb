cask "knockknock" do
  version "3.1.0"
  sha256 "0a2a392e352815c15c3e50d9c55bc8f062660543d3139726b7775aad5e3852f7"

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
