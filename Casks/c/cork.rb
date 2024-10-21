cask "cork" do
  version "1.4.6.1"
  sha256 "1299c1815bbae120312b7eaf031feb48bcb1b5f2c21ccde2c445a9323eebd4dc"

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
