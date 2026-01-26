cask "sqlectron" do
  arch arm: "-arm64"

  version "1.39.0"
  sha256 arm:   "c4eb68ce51cf0fadbe30c67ffc309c71832461132aaffa3abfaeeb8bc9a72265",
         intel: "4babd40df186b88cf47c10c61b3c4883a6f889934bbf20da23ea7430e6af6157"

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/sqlectron-#{version}#{arch}.dmg",
      verified: "github.com/sqlectron/sqlectron-gui/"
  name "Sqlectron"
  desc "SQL client"
  homepage "https://sqlectron.github.io/"

  app "sqlectron.app"

  zap trash: [
    "~/.sqlectron.json",
    "~/Library/Application Support/Sqlectron",
  ]
end
