cask "quiet-reader" do
  version "0.41.0"
  sha256 :no_check

  url "https://quietreader.app/Quiet%20Reader.dmg"
  name "Quiet Reader"
  desc "Free app that let's you read articles or text highlights distraction free"
  homepage "https://quietreader.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  zap trash: [
    "~/Library/Preferences/io.zeppelinlabs.quiet-reader.plist",
    "~/Library/Application Support/Quiet Reader",
    "~/Library/Saved Application State/io.zeppelinlabs.quiet-reader.savedState"
  ]

  app "Quiet Reader.app"
end
