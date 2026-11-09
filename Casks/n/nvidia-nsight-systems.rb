cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.6.1.218-39266636"
  sha256 arm:   "867e9c9ba651d744f037554d621411c8abddb91ed4c86252c621ea01186750cb",
         intel: "bdb5d4fc35bd037b25b91e4926c42a340a3a19a211da59e97316b07218b20597"

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
