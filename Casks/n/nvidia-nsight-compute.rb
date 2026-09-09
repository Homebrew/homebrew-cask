cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.3.0.13"
  sha256 arm:   "e7c7791ad4bf6ee294f24707f815bcfe8d3221328e1b24571cb82151b1e32e3d",
         intel: "7a1129336ad0c3b8695a0515cc25829ee41c2213dbf6da878d20398bac945e43"

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
  ]
end
