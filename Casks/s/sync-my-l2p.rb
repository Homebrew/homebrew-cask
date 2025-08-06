cask "sync-my-l2p" do
  version "2.5.1a"
  sha256 "e7dd0afce765444f229c287bf40b67fe00a4692e1a441cda62fb9b88efc13351"

  url "https://github.com/rwthmoodle/Sync-my-L2P/releases/download/v#{version}/SyncMyL2P-#{version.chomp("a")}-osx.dmg",
      verified: "github.com/rwthmoodle/Sync-my-L2P/"
  name "Sync-my-L2P"
  desc "Synchronises your documents from the L2P and Moodle of RWTH Aachen"
  homepage "https://www.syncmyl2p.de/"

  depends_on macos: ">= :high_sierra"

  app "Sync-my-L2P.app"

  caveats do
    requires_rosetta
  end
end
