cask "qownnotes" do
  version "20.10.6"
  sha256 "8e6520fe05fa8fd2c6714cddb71095994e7311fc8c39b4187296c931dfaf2b53"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json"
  name "QOwnNotes"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
