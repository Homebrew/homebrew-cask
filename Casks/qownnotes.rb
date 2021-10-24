cask "qownnotes" do
  version "21.10.11"
  sha256 "21522038cdd8c2ca68af5f1e6305e7f8f378e13388aa4d4ae597a78edf9b8756"

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
