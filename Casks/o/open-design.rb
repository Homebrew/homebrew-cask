cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "4415b534e0689059fe22bf201e556082d3df19b5f1c83b27b4b3b0cba67bc4fe",
         intel: "1b9d9cbdbb6f02fbd21b492c0e4a253571ef31a1c5ca458b8a779de327f2a949"

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
