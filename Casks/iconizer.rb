cask "iconizer" do
  version "3.0.0"
  sha256 "ba39274d621b84163fc1d347d9c0a8c3bd6f7f1e46712c18f4c8b2fa19422fec"

  # github.com/raphaelhanneken/iconizer/ was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast "https://github.com/raphaelhanneken/iconizer/releases.atom"
  name "Iconizer"
  homepage "https://raphaelhanneken.github.io/iconizer/"

  auto_updates true

  app "Iconizer.app"
end
