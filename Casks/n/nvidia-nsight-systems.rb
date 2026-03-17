cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.2.1.210-3763964"
  sha256 arm:   "61b1d081e9bd564485b10f46825d14baeb3d6a7fd5ca2a29c4059071c3ca2922",
         intel: "a5c816350755a6a3a988d4ec55dc8c4299e7292c9a47d2bf4c7df947dc620bbf"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/#{version.major_minor.dots_to_underscores}/NsightSystems-macos#{arch}-public-#{version}.dmg"
  name "NVIDIA Nsight Systems"
  desc "System-wide performance analysis tool"
  homepage "https://developer.nvidia.com/nsight-systems"

  livecheck do
    url "https://developer.nvidia.com/nsight-systems/get-started"
    regex(/NsightSystems[._-]macos#{arch}[._-]public[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  app "NVIDIA Nsight Systems.app"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"
end
