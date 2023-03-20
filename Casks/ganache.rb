cask "ganache" do
  version "2.7.0"
  sha256 "e5465539a85ebb869df0a5e7894445dacc8c7006b7468aed7ebb809392fbe6d5"

  url "https://github.com/trufflesuite/ganache-ui/releases/download/v#{version}/Ganache-#{version}-mac.dmg",
      verified: "github.com/trufflesuite/ganache-ui/"
  name "Ganache"
  desc "Personal blockchain for Ethereum development"
  homepage "https://truffleframework.com/ganache/"

  app "Ganache.app"
end
