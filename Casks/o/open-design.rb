cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.18.1"
  sha256 arm:   "69aeebb76d6d3c1a5141650974466799994a638a49401bdfaaec4711311e5316",
         intel: "31f62a82b25648152c16ca944e93914564e92f9d078b1bbb4608aff00426b642"

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
