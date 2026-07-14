cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "9ef2a89d9189e995fedcb906e30b2fc44d9d7413bbd7984aa60adb3e82d23136",
         intel: "46073ef2a28df12b86541fdbbf8b47a43b241684fbe0d2f18e9512340cc96ecb"

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
