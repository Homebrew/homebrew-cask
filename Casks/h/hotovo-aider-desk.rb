cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.68.0"
  sha256 arm:   "1ec5a76adc2142fbfb9f8343eb199265e300afabac84453a5c6eb237b78595eb",
         intel: "374e97c8f7afd6aa319bd5e415683d85884b232010310b1f044a7ad2fdf00d3b"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
