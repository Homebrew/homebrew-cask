cask "qownnotes" do
  version "21.2.5"
  sha256 "f43c99cdac3af89b9d69a182c96c5d1b5de2719d5eeca0240646326c3f6b307b"

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
end
