cask "gnosis-safe" do
  version "3.1.3"
  sha256 "5f0f94623d4a9bac4db13690fc97993e1ee94bc56354ecc5f67997879aee658e"

  url "https://github.com/gnosis/safe-react/releases/download/v#{version}/Safe-Multisig-#{version}.dmg",
      verified: "github.com/gnosis/safe-react/"
  name "Gnosis Safe"
  desc "Gnosis Safe Multisig Desktop Application"
  homepage "https://gnosis-safe.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Safe Multisig.app"

  zap trash: [
    "~/Library/Application Support/Safe Multisig",
  ]
end
