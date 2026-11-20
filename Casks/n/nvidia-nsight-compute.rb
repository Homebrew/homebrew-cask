cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.4.0.10"
  sha256 arm:   "4d5282e699722c6f56cb229df9227f65b752345532b149a287df2ce1c8f6c3ff",
         intel: "cb14135eedd8d8d9ecf93e3fb73439a334615eae320cd52c984a978009fd072f"

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

  uninstall quit: "com.nvidia.devtools.Rebel"

  zap trash: [
        "~/Library/Application Support/NVIDIA Corporation/NVIDIA Nsight Compute",
        "~/Library/Preferences/com.nvidia.devtools.Rebel.plist",
      ],
      rmdir: "~/Documents/NVIDIA Nsight Compute"
end
