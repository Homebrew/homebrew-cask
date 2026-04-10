cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.1.0.2"
  sha256 arm:   "9ce222f251ead0110f89c136030232e313a0df2ba5b26dc28fd16b7945057376",
         intel: "15acf4f2f7855554e1341ee62713cc79e248a58700eab5a17edeed0dce255acc"

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
