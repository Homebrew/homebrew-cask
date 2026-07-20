cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.3.1.157-3804839"
  sha256 arm:   "2d7ea76ed4f5f11ca9386405bf34dd9c1c64f4454713cd7aebec45b130b85e9d",
         intel: "29b370d42dc2317722d606e44c24b3fff894b3411510363df45b87aeda51836f"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/#{version.major_minor.dots_to_underscores}/NsightSystems-macos#{arch}-public-#{version}.dmg"
  name "NVIDIA Nsight Systems"
  desc "System-wide performance analysis tool"
  homepage "https://developer.nvidia.com/nsight-systems"

  livecheck do
    url "https://developer.nvidia.com/nsight-systems/get-started"
    regex(/NsightSystems[._-]macos#{arch}[._-]public[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "NVIDIA Nsight Systems.app"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"
end
