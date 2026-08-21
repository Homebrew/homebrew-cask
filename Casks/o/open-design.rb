cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.20.2"
  sha256 arm:   "cae70a85e112e18498a4aff08ad0825c40aee0ba29886522e0034c8d05278e3b",
         intel: "39ebd340d5d32c51e89ab154878d2e863e8a48565692a9d180396539a0bbae43"

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
