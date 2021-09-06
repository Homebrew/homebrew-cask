cask "sqlectron" do
  version "1.37.1"
  sha256 "7fb9b05d2154f9c8941cb06470d93dedd5359f2f1171778feceefea10b27838a"

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
