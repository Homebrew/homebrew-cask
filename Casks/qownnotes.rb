cask "qownnotes" do
  version "21.11.4"
  sha256 "f59d38e8d9ff6ae5b56b0ba61a790679cd52f7b5b0e79a24b3dc098751ed9e21"

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
