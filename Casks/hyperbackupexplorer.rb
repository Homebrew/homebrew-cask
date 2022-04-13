cask "hyperbackupexplorer" do
  version "3.0.0-0149"
  sha256 "a65568d752fbad15007ea4ca75da8df2fd6e2d574504a9f6e9bb784d45c244ff"

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
