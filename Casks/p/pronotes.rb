cask "pronotes" do
  version "0.7.7"
  sha256 "582ef7c759e4995255ef51ded5532c045c323e7d92e1e6071fe8e08e33a9550d"

  url "https://assets.pronotes.app/downloads/ProNotes-#{version}.zip"
  name "ProNotes"
  desc "Apple Notes extension"
  homepage "https://www.pronotes.app/"

  livecheck do
    url "https://www.pronotes.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ProNotes.app"

  zap trash: [
    "~/Library/Caches/com.dexterleng.ProNotes",
    "~/Library/Preferences/com.dexterleng.ProNotes.plist",
    "~/Library/Saved Application State/com.dexterleng.ProNotes.savedState",
    "~/Library/WebKit/com.dexterleng.ProNotes",
  ]
end
