cask "nvidia-sync" do
  version "0.100.18"
  sha256 "d3c096a5e6219c8be2fda8e54feb50a029ca19708f88474dd7f5a73805ed219c"

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

  depends_on macos: :monterey

  app "NVIDIA Sync.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA/Sync",
    "~/Library/Preferences/com.nvidia.nvidia-sync.plist",
  ]
end
