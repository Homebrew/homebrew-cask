cask "rcse" do
  version "1.9.2"
  sha256 "ed8d03eb8f9ce2087f01d54cc29e8f4c0a994f457c855d00d5191668f02158c0"

  # downloads.sourceforge.net/rolisteam/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/rolisteam/rcse_v#{version}_MacOs.dmg"
  appcast "https://sourceforge.net/projects/rolisteam/rss"
  name "Rolisteam Character Sheet Editor (RCSE)"
  homepage "https://rolisteam.org/"

  app "rcse.app"
end
