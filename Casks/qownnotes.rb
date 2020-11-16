cask "qownnotes" do
  version "20.11.6"
  sha256 "923b14f35521648209f5e28c0a7062f244654d08b56a22120f2514144d99eeba"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json"
  name "QOwnNotes"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
