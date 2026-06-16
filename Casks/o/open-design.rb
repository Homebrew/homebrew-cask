cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "138936e9b40621985c13783c8e6a16a680c8191ae1617e97bfacc396b42b5d0a",
         intel: "5c6e2e76b75fae22e5ce017f8207d8890681d06b074a6ab1d65e4b50e9034fdb"

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
