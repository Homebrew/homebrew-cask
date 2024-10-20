cask "cork" do
  version "1.4.6"
  sha256 "cfe8457109e9119ee6c1b9f8ed2083b7f1041e9c89526242d3c0344d0c8d74f9"

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
