cask "sqlectron" do
  version "1.32.1"
  sha256 "719195051fcb0405ce4b4b8e07df8eee8c7807ec8e9cabe5a5a088d100628280"

  # github.com/sqlectron/sqlectron-gui/ was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast "https://github.com/sqlectron/sqlectron-gui/releases.atom"
  name "Sqlectron"
  homepage "https://sqlectron.github.io/"

  app "sqlectron.app"

  zap trash: [
    "~/.sqlectron.json",
    "~/Library/Application Support/Sqlectron",
  ]
end
