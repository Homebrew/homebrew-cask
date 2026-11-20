cask "nvidia-sync" do
  version "0.148.0-153"
  sha256 "d145d249ecc39397adf3a42ec744de9f0c08d9ab8c2552298ad2638713bed1e4"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nvidia.nvidia-sync.sfl*",
    "~/Library/Application Support/NVIDIA/Sync",
    "~/Library/Preferences/com.nvidia.nvidia-sync.plist",
  ]
end
