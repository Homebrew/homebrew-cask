cask "qownnotes" do
  version "20.12.1"
  sha256 "85a2d3aa6b6508040c8ae5658d723c2297999ee1025160aa15bce8497bb68b23"

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
