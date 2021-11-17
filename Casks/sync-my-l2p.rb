cask "sync-my-l2p" do
  version "2.4.5"
  sha256 "e0eef5b462bb3c277784136a24165e29e207d3b0dc6ad165e8b621c46263d6c0"

  url "https://github.com/rwthmoodle/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version}-osx.dmg",
      verified: "github.com/rwthmoodle/Sync-my-L2P/"
  name "Sync-my-L2P"
  desc "Synchronizes your documents from the L2P and Moodle of RWTH Aachen"
  homepage "https://www.syncmyl2p.de/"

  app "Sync-my-L2P.app"
end
