cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "dacdc0f0c699a331586a609009d8005ee2990fbffb544dc3b3fbc2c49be64afe",
         intel: "8f1a8159e5bad83d09d1a29f598666e2adce30200316882a4957737186734634"

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
