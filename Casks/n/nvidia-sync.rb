cask "nvidia-sync" do
  version "0.100.18-2"
  sha256 "3534eba0f0d4db9f9662e47773eed04a44c0c40bd89009d48ae425df64d8b2fb"

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
