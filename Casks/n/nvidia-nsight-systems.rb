cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.4.1.174-3856861"
  sha256 arm:   "bd089e2394d79369b57867ee3384efed3bcf03471afec31a5711a7c51d11a9ab",
         intel: "e3061eb474bdcfea237750875079bf5b197656b9a5f67547ad10b8f1564fca48"

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
