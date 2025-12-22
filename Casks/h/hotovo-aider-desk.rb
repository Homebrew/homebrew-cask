cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.45.0"
  sha256 arm:   "48b15ff4077c4e151f176978cdad2b32eb104cc141e48e89c99a856ef46e9e88",
         intel: "7fd798a07aa29e15642012bb58d043cb30c05ec427d171a5341bceebd0a26133"

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
