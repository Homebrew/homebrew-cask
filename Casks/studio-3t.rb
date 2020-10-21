cask "studio-3t" do
  version "2020.9.0"
  sha256 "c5aad583a84230bdfdb4f843a20c74ce97a8f3a7e7959c63573079a019780ff6"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast "https://files.studio3t.com/changelog/changelog.txt"
  name "Studio 3T"
  homepage "https://studio3t.com/"

  auto_updates true

  app "Studio 3T.app"
end
