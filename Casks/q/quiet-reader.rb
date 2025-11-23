cask "quiet-reader" do
  version "0.41.0"
  sha256 :no_check

  url "https://quietreader.app/Quiet%20Reader.dmg"
  name "Quiet Reader"
  desc "Read articles or text highlights distraction free"
  homepage "https://quietreader.app/"

  disable! date: "2025-01-04", because: :no_longer_available

  app "Quiet Reader.app"

  zap trash: [
    "~/Library/Application Support/Quiet Reader",
    "~/Library/Preferences/io.zeppelinlabs.quiet-reader.plist",
    "~/Library/Saved Application State/io.zeppelinlabs.quiet-reader.savedState",
  ]
end
