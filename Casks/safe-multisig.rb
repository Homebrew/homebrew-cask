cask "safe-multisig" do
  version "3.2.1"
  sha256 "f100a2be2d9e3dea01f7a612418e5296dca2dd26488dd6cae1dd3b7407900345"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}/Safe-Multisig-#{version}.dmg",
      verified: "github.com/gnosis/safe-react/"
  name "Gnosis Safe Multisig"
  desc "Ethereum multisig wallet"
  homepage "https://gnosis-safe.io/"

  app "Safe Multisig.app"

  zap trash: "~/Library/Application Support/Safe Multisig"
end
