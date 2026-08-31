cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "ee312723e61fb3d8fd792fb2e6faaa679ea137eeafe02bc76d6cb8d685db4f12",
         intel: "f04149425e284ac0ce32e8b22c9b22e4ec70d0141fa8e24d5a54ff6333cecba9"

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
