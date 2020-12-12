cask "mycrypto" do
  version "1.7.13"
  sha256 "de7f1133f9ea2c8aeb1c1f58c8ae0c864b79a956dc99904debe72fa5f707382c"

  # github.com/MyCryptoHQ/MyCrypto/ was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast "https://github.com/MyCryptoHQ/MyCrypto/releases.atom"
  name "MyCrypto"
  homepage "https://mycrypto.com/"

  app "MyCrypto.app"
end
