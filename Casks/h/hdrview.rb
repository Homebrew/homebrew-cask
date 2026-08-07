cask "hdrview" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.1"
  sha256 arm:   "6cd00bb8152d23acc12ee15eb8a40d33c08ee578223ffb3fb675d83068acea66",
         intel: "fb959f7707d09ff47ce645239a3f7749f4b0d00e688271c45f5165b09d7945b4"

  url "https://github.com/wkjarosz/hdrview/releases/download/v#{version}/HDRView-#{version}-#{arch}.dmg"
  name "HDRView"
  desc "Research-oriented, high-dynamic range (HDR) image viewer and comparison tool"
  homepage "https://github.com/wkjarosz/hdrview"

  livecheck do
    url "https://github.com/wkjarosz/hdrview/releases"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "HDRView.app"

  zap trash: [
    "~/Library/Preferences/com.im.hdrview.hdrview.plist",
    "~/Library/Saved Application State/com.im.hdrview.hdrview.savedState",
  ]
end
