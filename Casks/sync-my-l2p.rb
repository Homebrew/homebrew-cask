cask "sync-my-l2p" do
  version "2.4.4"
  sha256 "43c7057f85e827feb87aa90cd8128b64a615260a8f2e534a6268eb6f6aeaf2c8"

  url "https://github.com/rwthmoodle/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-osx.dmg",
      verified: "github.com/rwthmoodle/Sync-my-L2P/"
  name "Sync-my-L2P"
  desc "Synchronizes your documents from the L2P and Moodle of RWTH Aachen"
  homepage "https://www.syncmyl2p.de/"

  app "Sync-my-L2P.app"
end
