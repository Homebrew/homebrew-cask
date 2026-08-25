cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "b553f49c1fbdc7dcca4ca225d682ad5d672e0a1363653ce953eceecd76e53326",
         intel: "f73241ee3f0c8eb6ae7c63089cf0c3037fa0d39d9d40ba427fc2322ac95fbd03"

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
