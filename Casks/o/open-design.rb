cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "834fd77358fbf9970fd6681ab31320e3d483130b20695361d57d83b0c9282dc1",
         intel: "84e64c7eae77f680561faa30beecd341d6928e233bb8d0fe5d3b605b8aab0ea0"

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
