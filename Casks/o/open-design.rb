cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "2686e62ff7aab0d0fc1bbd30e8b5c2d48a88e44e53b79596b15d846115abed3f",
         intel: "223935dde94b67a89eea13e1da9c9a490a4cac7c7fe7cc88a273075927a2c7dc"

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
