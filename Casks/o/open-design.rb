cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "a031619d68ec734e4fd30b4a735b7d50e41b218d22c3e3372d9c07af37e026be",
         intel: "37f609afd0a6bb4cc3d2e3ebcae762bce04d2b14eb33df9979344755234b7ffa"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg",
      verified: "github.com/nexu-io/open-design/"
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
