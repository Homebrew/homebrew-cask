cask "ganache" do
  version "2.4.0"
  sha256 "24a706730c006bb5a5c70fe6c167a0371300891c38096985455ac45e762e14fb"

  # github.com/trufflesuite/ganache/ was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast "https://github.com/trufflesuite/ganache/releases.atom"
  name "Ganache"
  desc "Personal blockchain for Ethereum development"
  homepage "https://truffleframework.com/ganache/"

  app "Ganache.app"
end
