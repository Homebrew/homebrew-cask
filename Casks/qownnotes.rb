cask "qownnotes" do
  version "20.9.1"
  sha256 "88a80a080cf2ee95694f76fac45c71770b189270dcf833a22fd3ccf8a467b659"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json"
  name "QOwnNotes"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
