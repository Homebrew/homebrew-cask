cask "hdrview" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.3"
  sha256 arm:   "f12c26d7edc26f045fdae7a190e8137d3ca3e5059076c77d6944eb88c40887ba",
         intel: "5ff65eca6567a310428c7c151dac50729db667e434038f5e480d7a8d15bb813a"

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
