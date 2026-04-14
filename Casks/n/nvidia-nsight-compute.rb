cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.1.1.2"
  sha256 arm:   "1f3ff891a82af6f6444db78a22bee56a6eb55cd19d07e8d8a0fb480c5fc5db20",
         intel: "82f9d69384e69cbad20050d6dc6e4b201ff9ed790cfa8f813da62ff1ae024a04"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight_compute-mac-#{arch}-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA and NVIDIA OptiX"
  homepage "https://developer.nvidia.com/nsight-compute"

  livecheck do
    url "https://developer.nvidia.com/tools-overview/nsight-compute/get-started"
    regex(/nsight[._-]compute[._-]mac[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "NVIDIA Nsight Compute.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA Corporation/NVIDIA Nsight Compute",
    "~/Library/Preferences/com.nvidia.devtools.Rebel.plist",
  ]
end
