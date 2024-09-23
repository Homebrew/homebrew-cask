cask "cork" do
  version "1.4.5.2"
  sha256 "98cd7cd6b37ec170f62c08859aa0c8d49510cf4dfcccbd077b63e2356f756cc4"

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
