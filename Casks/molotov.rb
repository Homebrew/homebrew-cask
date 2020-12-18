cask "molotov" do
  version "4.4.0"
  sha256 "d7ed7bec146eb0ffbabbdb419da4615ef2c20ea9b17f8bc7ac6de4a050fd94bc"

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  appcast "https://desktop-auto-upgrade.molotov.tv/mac/manifest.json"
  name "Molotov"
  desc "French TV streaming service"
  homepage "https://www.molotov.tv/"

  app "Molotov.app"
end
