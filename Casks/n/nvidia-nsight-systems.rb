cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2025.5.1.121-3638078"
  sha256 arm:   "6ea1bdddfcb690b0f9dd4db41eb931882f7636e52d5164da28a4408cdf31922d",
         intel: "da6f0a135bab4bf02965487aa4b80c4415d4528d18ad36fc3909f672c766718f"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/#{version.major_minor.dots_to_underscores}/NsightSystems-macos#{arch}-public-#{version}.dmg"
  name "NVIDIA Nsight Systems"
  desc "System-wide performance analysis tool"
  homepage "https://developer.nvidia.com/nsight-systems"

  livecheck do
    url "https://developer.nvidia.com/nsight-systems/get-started"
    regex(/NsightSystems[._-]macos#{arch}[._-]public[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "NVIDIA Nsight Systems.app"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"
end
