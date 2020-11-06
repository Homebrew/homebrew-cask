cask "sqlectron" do
  version "1.32.0"
  sha256 "cc82033ced8e75e4ece474c7530f1085d62809647be6f32fdcc30ac0ead93160"

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
