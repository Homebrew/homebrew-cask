cask "hyperbackupexplorer" do
  version "3.0.1-0154"
  sha256 "7c05795b08cacdc4597fb037e548b6a71d82f80d8219c4fb7fc59c2dbb82c052"

  url "https://global.download.synology.com/download/Utility/HyperBackupExplorer/#{version}/Mac/x86_64/HyperBackupExplorer-#{version}-mac.dmg"
  name "HyperBackupExplorer"
  desc "Backup data from a Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/hyper_backup"

  livecheck do
    url "https://www.synology.com/en-global/releaseNote/HyperBackupExplorer"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "HyperBackupExplorer.app"
end
