cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "d793e24ddefd7414fce116fc7fdec194fcd0f9e4b3b6629aaac327c132331ca6",
         intel: "602262c379e3ed733b42255bdb6030c4b02e8ea49e6d5a56dc7fcbf0e5ea81da"

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
