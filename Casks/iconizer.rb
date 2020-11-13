cask "iconizer" do
  version "2020.11"
  sha256 "400211fbbf0c587efb9c388346513fea52a9f0809e7acbe8f02abb877bb3058b"

  # github.com/raphaelhanneken/iconizer/ was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast "https://github.com/raphaelhanneken/iconizer/releases.atom"
  name "Iconizer"
  homepage "https://raphaelhanneken.github.io/iconizer/"

  auto_updates true

  app "Iconizer.app"
end
