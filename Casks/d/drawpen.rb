cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.39"
  sha256 arm:   "0599e4a67326ebb31731fffb4a1a284fc117767463c0a265d0cb679abb1e6c84",
         intel: "acb0675affa0fb06d68a3f5a62d5cf2bcdeeb03bc6bc928780ec2121a8268653"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
