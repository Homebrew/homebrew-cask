cask "molotov" do
  version "4.3.0"
  sha256 "38722366cc0208622a5be110c741da723c17628a9cd9b637861b93f262b8e1a0"

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  appcast "https://desktop-auto-upgrade.molotov.tv/mac/manifest.json"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  app "Molotov.app"
end
