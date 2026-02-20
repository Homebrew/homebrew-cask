cask "clipcascade" do
  arch arm: "ARM_M-Series", intel: "Intel-Series"

  version "3.1.0"
  sha256 arm:   "2187a3103397bab6569204f1942fee6419bb6e34c48d848d79ddc9163253a8f8",
         intel: "7421ad6bbe961fee5af6b2fcc8a1b49a3aae993591f38069eec598a43b0d04de"

  url "https://github.com/Sathvik-Rao/ClipCascade/releases/download/#{version}/ClipCascade-Apple_macOS.#{arch}.zip"
  name "ClipCascade"
  desc "Automatically sync clipboard across devices"
  homepage "https://github.com/Sathvik-Rao/ClipCascade"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "ClipCascade-Apple_macOS(#{arch})/ClipCascade.app"

  zap trash: [
    "~/Library/Application Support/ClipCascade",
    "~/Library/Preferences/ClipCascade.plist",
  ]
end
