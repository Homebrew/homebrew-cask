cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.1.2.63-3729663"
  sha256 arm:   "66248ba72665af04a70a772fe1f3daea64898d5bcb769de900383f30c76b6e08",
         intel: "31fa19b77cd897313a3012d8dc9fc73842a27804655ad39d448136ff447d2af3"

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
