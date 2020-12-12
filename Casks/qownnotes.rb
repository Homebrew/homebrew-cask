cask "qownnotes" do
  version "20.12.4"
  sha256 "42c9bdeeda66d0386f84a8000bc64406604a0e7b9261782921916a3b0938ffa4"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://github.com/pbek/QOwnNotes/releases.atom"
  name "QOwnNotes"
  desc "Plain-text file notepad and todo-list manager"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
