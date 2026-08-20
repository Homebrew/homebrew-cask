cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "1e2bd15f74d9feccdbf40131f874af374e39fd0e5e36c749a4c0ae4835000937",
         intel: "f5fcd56d7d5050e91fbb9ff0d81e7cd8d2e3bcf823c83ca799023cb8ed8b1fd6"

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
