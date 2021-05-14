cask "sqlectron" do
  version "1.36.0"
  sha256 "fb6241389a0cb390c423ab39c73a9b1d86f876f3d7ab54a77f2c48f27123c6c6"

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip",
      verified: "github.com/sqlectron/sqlectron-gui/"
  name "Sqlectron"
  homepage "https://sqlectron.github.io/"

  app "sqlectron.app"

  zap trash: [
    "~/.sqlectron.json",
    "~/Library/Application Support/Sqlectron",
  ]
end
