cask "sqlectron" do
  version "1.38.0"
  sha256 "30c338d72d0262b4f40d9e105f4e1e0972c24103f7c3b695fdd5cb42a3ada84e"

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
