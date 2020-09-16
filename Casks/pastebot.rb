cask "pastebot" do
  version "2.3.1"
  sha256 "90ff5fc47b7df7714389de10c92801707382f405a38feaad2decd7354538ff2b"

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/pastebot#{version.major}/Pastebot.dmg"
  name "Pastebot"
  desc "Workflow application to improve productivity"
  homepage "https://tapbots.com/pastebot/"

  depends_on macos: ">= :high_sierra"

  app "Pastebot.app"

  zap delete: [
    "~/Library/Containers/com.tapbots.Pastebot#{version.major}Mac",
    "~/Library/Preferences/com.tapbots.Pastebot#{version.major}Mac.plist",
  ]
end
