cask "hyperbackupexplorer" do
  version "3.0.1-0156"
  sha256 "0aa5b7162acf104c7644e1e0355cb2ff309837fb60dff111bbc3c213f985e826"

  url "https://global.download.synology.com/download/Utility/HyperBackupExplorer/#{version}/Mac/x86_64/HyperBackupExplorer-#{version}-mac.dmg"
  name "HyperBackupExplorer"
  desc "Backup data from a Synology NAS"
  homepage "https://www.synology.com/en-us/dsm/feature/hyper_backup"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=HyperBackupExplorer&lang=en-global"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions").map { |item| item["version"] }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "HyperBackupExplorer.app"

  zap trash: [
    "~/Library/Preferences/com.synology.HyperBackupExplorer.plist",
    "~/Library/Saved Application State/com.synology.HyperBackupExplorer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
