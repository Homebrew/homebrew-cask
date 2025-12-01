cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.3.0.19-36273991"
  sha256 arm:   "e7df8a120a66f72a9a740c81350d365e3acb1f9cff8eab6a9db49f2d702e269d",
         intel: "03ea2e18bbf3e3bcbe552b15ba57159dda795e073efc8dbe1201c7006051e01f"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight-compute-mac-#{arch}-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA and NVIDIA OptiX"
  homepage "https://developer.nvidia.com/nsight-compute"

  disable! date: "2025-10-02", because: "requires login to download"

  app "NVIDIA Nsight Compute.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA Corporation/NVIDIA Nsight Compute",
    "~/Library/Preferences/com.nvidia.devtools.Rebel.plist",
  ]
end
