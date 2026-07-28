cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.4.1.191-3860507"
  sha256 arm:   "4b510c087f325c3464f1334d7c86773a55d30eab75d7a043ac0a632ff1dcad44",
         intel: "82bf6e7eaebd87d11f19da07a8c8e5631cb6b20c3d63eb3c2b4481c19573106f"

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
