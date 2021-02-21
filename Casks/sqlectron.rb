cask "sqlectron" do
  version "1.34.0"
  sha256 "5ec0dbf6a487c062170874351f958b620876e3c58784cb9076527e050dc5b734"

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
