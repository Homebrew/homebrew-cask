cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "88446bb9f565099cef97b045fba6ce678af299b3f112fd8a5b23cf81ae725959",
         intel: "1d88c0cb282a1e503c54068cccb46a52684259e6df755a0a24cd65fcee1e8ea1"

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
