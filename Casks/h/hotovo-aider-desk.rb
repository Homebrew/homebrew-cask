cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.45.1"
  sha256 arm:   "74d221a2b92033603379af86f0647cc7a9c8264db1993b727edc3ab9b41a3a2d",
         intel: "335565803d14b426b42557f2c83d4c4db1b02e6c6072f71e90599d0b9e05edef"

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
