cask "sqlectron" do
  version "1.31.0"
  sha256 "3f572fba0ee5f07c919e8181b9f121d6380b6f367b3362a819ce8c3616f35dd5"

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
