cask "cork" do
  version "1.4.5"
  sha256 "f4d51f0afc50406f9b9eb55bd777dbb0235f6f0fe507ed5f27cd71b8e10e79ca"

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
