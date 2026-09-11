cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.5.1.161-3889610"
  sha256 arm:   "e2c4edff136ded49b5fc42bad6b1d7d5ab5e57d3e59f9dd38034128dd25a3df8",
         intel: "446d61425f2aadc2526097d0a116943f60bc66ac9cafa138ed565e3dc505065b"

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

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"
end
