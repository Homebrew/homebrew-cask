cask "qownnotes" do
  version "23.8.1"
  sha256 "7c140a44501ad8da321b75011f498b48691a1d549d48e603dd7ae4c311e48f5a"

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
end
