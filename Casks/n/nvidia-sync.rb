cask "nvidia-sync" do
  version "0.100.19-18"
  sha256 "25ce30950a4e7a27b2592679d7d0457b056049725140deaa12c59a9b2171faed"

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
