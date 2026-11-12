cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.6.1.251-39333969"
  sha256 arm:   "73c992559f07d0146a3807711b1b03041d0f046301b26688ba8923cf5215fc0b",
         intel: "370040436828278501415b7735134bd336c43627677654e4861a0d6cbe5dd093"

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

  uninstall quit: "com.nvidia.devtools.QuadD"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState",
      rmdir: "~/Documents/NVIDIA Nsight Systems"
end
