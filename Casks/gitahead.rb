cask "gitahead" do
  version "2.6.3"
  sha256 "ea017f49698ec7442d0e322e2640fba9b087694f5efc15d0b8c730b6343c378b"

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast "https://github.com/gitahead/gitahead/releases.atom"
  name "GitAhead"
  homepage "https://github.com/gitahead/gitahead"

  depends_on macos: ">= :sierra"

  app "GitAhead.app"
end
