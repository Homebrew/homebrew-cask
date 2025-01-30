cask "cork" do
  version "1.5.1"
  sha256 "29a29e14cb1b60366466065b263e1a64c22a28e6c625be3fe14fc472a6ae7dc1"

  url "https://github.com/buresdv/Cork/releases/download/v#{version}/Cork.zip",
      verified: "github.com/buresdv/Cork/"
  name "Cork"
  desc "GUI companion app for Homebrew"
  homepage "https://www.corkmac.app/"

  depends_on macos: ">= :ventura"

  app "Cork.app"

  zap trash: [
    "~/Documents/Cork",
    "~/Library/Caches/com.davidbures.cork",
    "~/Library/HTTPStorages/com.davidbures.cork",
    "~/Library/Preferences/com.davidbures.cork.plist",
    "~/Library/Saved Application State/com.davidbures.cork.savedState",
  ]
end
