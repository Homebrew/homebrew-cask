cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2026.1.1.204-3717666"
  sha256 arm:   "da468c30ec1337adf87aa9ed7fde44bc22c7848bb81a9532a0edadf699c56a6f",
         intel: "0b97b9f22c758583a97bbe5d74b95846e2c3fa9a6a1efe7f6574683aacb54965"

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
