cask "create-recovery-partition-installer" do
  version "1.1"
  sha256 "19dfb873cfa574bc0692e58b0c96554e8f59c8406bb720889da490a548400882"

  url "https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases/download/v#{version}/Create.Recovery.Partition.Installer-#{version}.dmg"
  name "Create Recovery Partition Installer"
  homepage "https://github.com/MagerValp/Create-Recovery-Partition-Installer/"

  app "Create Recovery Partition Installer.app"

  caveats do
    discontinued
  end
end
