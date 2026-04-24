cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.1.1.3"
  sha256 arm:   "6b4dd1bfb86d2caea586f289b10e93b5e0510774933942e08df00fb98943b07d",
         intel: "794bc7abb08eb9841e113004ff8cb99a248a7629d6ad6d7260d8f718f40afaf7"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight_compute-mac-#{arch}-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA and NVIDIA OptiX"
  homepage "https://developer.nvidia.com/nsight-compute"

  livecheck do
    url "https://developer.nvidia.com/tools-overview/nsight-compute/get-started"
    regex(/nsight[._-]compute[._-]mac[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "NVIDIA Nsight Compute.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA Corporation/NVIDIA Nsight Compute",
    "~/Library/Preferences/com.nvidia.devtools.Rebel.plist",
  ]
end
