cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "2c227ff335aae3a5d4119da0e5f7191c80eb7095fe187a442bca7f6a4e03a46f",
         intel: "cb8da5abdf2c6034e82344b5248e0363583336156c4b04f2f6faa41cd23b9fc7"

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
