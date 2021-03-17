cask "sqlectron" do
  version "1.35.0"
  sha256 "5974d814b1816f37b300043dbced69602c8c8ef9ba68743e34553021771563f0"

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip",
      verified: "github.com/sqlectron/sqlectron-gui/"
  appcast "https://github.com/sqlectron/sqlectron-gui/releases.atom"
  name "Sqlectron"
  homepage "https://sqlectron.github.io/"

  app "sqlectron.app"

  zap trash: [
    "~/.sqlectron.json",
    "~/Library/Application Support/Sqlectron",
  ]
end
