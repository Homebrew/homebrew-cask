cask "qownnotes" do
  version "21.1.1"
  sha256 "e26bc705d539aedb1fe7387bcc29301576eabb1b00797a7c4f6c1237a516bc27"

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
