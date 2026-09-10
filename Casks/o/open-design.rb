cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "9c3c5f1e523dac9228c51331dea41de998f61ab9b2d51def27f642e2ce70a30e",
         intel: "9094113d0928d9ae2bea6610533d97dcf6191514f44d9966de3825ec02fec18b"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg"
  name "Open Design"
  desc "Local-first, agent-native design tool"
  homepage "https://open-design.ai/"

  livecheck do
    url :url
    regex(/open-design[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open Design.app"

  zap trash: [
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end
