cask "mockforge" do
  arch arm: "arm64", intel: "x64"

  version "0.7.11"
  sha256 arm:   "2c1552a41652fce6fbb4cb3c27e1dab3fe9a0c58a79cbc5b689156562caf4ad9",
         intel: "f90deab4b5870b86d102eab24074db73e3d982e6e09e7c14f9708a108973c02b"

  url "https://github.com/jvictororiz/Mock-Forge/releases/download/v#{version}/MockForge-mac-#{arch}.dmg"
  name "MockForge"
  desc "Visual mock server manager for MockServer"
  homepage "https://github.com/jvictororiz/Mock-Forge"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "MockForge.app"

  uninstall quit: "com.mockforge.app"

  zap trash: [
    "~/.mockforge",
    "~/Library/Application Support/MockForge",
    "~/Library/Logs/MockForge",
    "~/Library/Preferences/com.mockforge.app.plist",
    "~/Library/Saved Application State/com.mockforge.app.savedState",
  ]
end
