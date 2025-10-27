cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.37.1"
  sha256 arm:   "644aad32949303e29c2a2e58874a5e62bcdab0f4e41f14f74b29b2484809cdb0",
         intel: "0bebb0835c109b80d287be6ac6c25e3230caf6ec2df0e4ae6d3eca5809dec47d"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
