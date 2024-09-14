cask "qownnotes" do
  version "24.9.6"
  sha256 "9aedab5077f0c35cb47828a80e0b48e61147b1d4759ad2a6216e2b2f1c063ece"

  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg",
      verified: "github.com/pbek/QOwnNotes/"
  name "QOwnNotes"
  desc "Plain-text file notepad and todo-list manager"
  homepage "https://www.qownnotes.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"

  zap trash: [
    "~/Library/Preferences/com.pbe.QOwnNotes.plist",
    "~/Library/Saved Application State/com.PBE.QOwnNotes.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
