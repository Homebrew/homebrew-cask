cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.70.0"
  sha256 arm:   "149db7b6ba9206eabd847e8f63b9d107b62a6b7a2f4de97bec91992c7b9d2204",
         intel: "a8d3a036d0e1ac3fa81b0906d0ddee35650bc8ee702e926df41a68951845a5d3"

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
