cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "85d30826ba46729f45bf059c76e710e760e2b6bfc2c57218e311027cbb0cbcd5",
         intel: "b7217e661d14bc2c4d0d7bb7bb996a5bfcfa23ee3f09671385f56baa68263de3"

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
