cask "mycrypto" do
  version "1.7.12"
  sha256 "b014e6497e854e83bf84de6d3e48c84435041e6f67761e0dee9ce5076c6c21c8"

  # github.com/MyCryptoHQ/MyCrypto/ was verified as official when first introduced to the cask
  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg"
  appcast "https://github.com/MyCryptoHQ/MyCrypto/releases.atom"
  name "MyCrypto"
  homepage "https://mycrypto.com/"

  app "MyCrypto.app"
end
