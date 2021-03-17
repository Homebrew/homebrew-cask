cask "sync-my-l2p" do
  version "2.4.1"
  sha256 "481af4bd5be7bb8940fe3c9bd435f5b509acefa45cba347892893664a702265b"

  url "https://github.com/RobertKrajewski/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-osx.dmg",
      verified: "github.com/RobertKrajewski/Sync-my-L2P/"
  appcast "https://github.com/RobertKrajewski/Sync-my-L2P/releases.atom"
  name "Sync-my-L2P"
  homepage "https://www.syncmyl2p.de/"

  app "Sync-my-L2P.app"
end
