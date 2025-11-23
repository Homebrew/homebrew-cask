cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2025.6.1.190-3689520"
  sha256 arm:   "31057f6aa880063c97446162be6a2c30e6ab308daba6cf2521550ff1f4ec4fb5",
         intel: "70a46df9f784a851ac7edf4f7c9312b51da90622fffc791f964908b074cd38ea"

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
