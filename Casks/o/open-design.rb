cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "53d2b32dce7b22691db01e5c02466dbed1a79e8b7649afc057ec03754dcba8f5",
         intel: "6c7b254d17a21e76cf9b00fa259798dc92b8eeec155b98bfffac6c87a4c1a877"

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
