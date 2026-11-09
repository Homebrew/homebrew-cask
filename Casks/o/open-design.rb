cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "1226fa9ada937dc585a54c8d1e96adf4b8a92d39e3f998101923a09de0b038eb",
         intel: "c7cdcb273a789c69c0022bb79b25dec773fa4c80f44793e2411c7d3e49f9056f"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.open-design.desktop.sfl*",
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end
