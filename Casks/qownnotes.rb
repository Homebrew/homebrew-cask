cask "qownnotes" do
  version "21.1.7"
  sha256 "7a769589853ed533e7c1b1120e62c6232adccacbbba5afabad3c0103fae72f2d"

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
