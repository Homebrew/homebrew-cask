cask "nvidia-sync" do
  version "0.64.24"
  sha256 "57648ff49dcfea1fd2321fef704621463aef665ff3f934c97aad00b04a907fd8"

  url "https://workbench.download.nvidia.com/stable/nvidia-sync/#{version}/nvidia-sync.dmg"
  name "NVIDIA Sync"
  desc "Utility for launching applications and containers on remote Linux systems"
  homepage "https://docs.nvidia.com/dgx/dgx-spark/nvidia-sync.html"

  livecheck do
    url "https://workbench.download.nvidia.com/stable/nvidia-sync/stable-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "NVIDIA Sync.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA/Sync",
    "~/Library/Preferences/com.nvidia.nvidia-sync.plist",
  ]
end
