cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.3.1.4-36398880"
  sha256 arm:   "1858cd1e90432ca220a04850a34c250000879027147c9732f83b43ecba0d3277",
         intel: "ef72b37e3af30fcf494010b2b7ef4a92cdaef4909234c6069cd68848707e762f"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight-compute-mac-#{arch}-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA and NVIDIA OptiX"
  homepage "https://developer.nvidia.com/nsight-compute"

  livecheck do
    url "https://developer.nvidia.com/tools-overview/nsight-compute/get-started"
    regex(/nsight[._-]compute[._-]mac[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  disable! date: "2025-10-02", because: "requires login to download"

  app "NVIDIA Nsight Compute.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA Corporation/NVIDIA Nsight Compute",
    "~/Library/Preferences/com.nvidia.devtools.Rebel.plist",
  ]
end
