cask "qownnotes" do
  version "20.9.5"
  sha256 "4f832aaf1ebd0ecfd44f1f0a77efd05cd81ecb2894c747d090f6b9b9a47a52f0"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json"
  name "QOwnNotes"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
