cask "ganache" do
  version "2.5.4"
  sha256 "1053a5405b8448ebbe7d2e34423e3393fbe9e3e5df7e96305eb34c41495f8ce1"

  # github.com/trufflesuite/ganache/ was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast "https://github.com/trufflesuite/ganache/releases.atom"
  name "Ganache"
  desc "Personal blockchain for Ethereum development"
  homepage "https://truffleframework.com/ganache/"

  app "Ganache.app"
end
