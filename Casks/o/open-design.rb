cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "ff7a1181b83aca664b85b7da0a5df740c99cf34bdce203d5276022ee72946d76",
         intel: "f2fc313eb5b62c207621b5f15e83aa135c69a04e9cbae25fce94da2d99c346ee"

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
