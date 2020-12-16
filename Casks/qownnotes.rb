cask "qownnotes" do
  version "20.12.6"
  sha256 "b76964901da4c5075731f61e0c9252a4ae645055809c4c9ae2f3bd76313f38b7"

  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg",
      verified: "github.com/pbek/QOwnNotes/"
  appcast "https://github.com/pbek/QOwnNotes/releases.atom"
  name "QOwnNotes"
  desc "Plain-text file notepad and todo-list manager"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
