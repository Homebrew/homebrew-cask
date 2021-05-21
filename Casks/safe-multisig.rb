cask "safe-multisig" do
  version "3.2.1"
  sha256 "f100a2be2d9e3dea01f7a612418e5296dca2dd26488dd6cae1dd3b7407900345"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}/Safe-Multisig-#{version}.dmg",
      verified: "github.com/gnosis/safe-react/"
  name "Gnosis Safe Multisig"
  desc "Ethereum multisig wallet"
  homepage "https://gnosis-safe.io/"

  # It's necessary to check the GitHub releases page and match versions
  # from dmg files, as not all releases provide a dmg file. Normally we avoid
  # checking the releases page and use the Git or, if necessary, GithubLatest
  # strategy but this is an exception.
  livecheck do
    url "https://github.com/gnosis/safe-react/releases"
    regex(/href=.*?Safe-Multisig[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  app "Safe Multisig.app"

  zap trash: "~/Library/Application Support/Safe Multisig"
end
