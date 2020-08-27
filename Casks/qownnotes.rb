cask "qownnotes" do
  version "20.8.10"
  sha256 "1d4556661efe7df61db774f34597853ec5e20900ce96bc8391dae85db7ade595"

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/v#{version}/QOwnNotes.dmg"
  appcast "https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json"
  name "QOwnNotes"
  homepage "https://www.qownnotes.org/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "QOwnNotes.app"
end
