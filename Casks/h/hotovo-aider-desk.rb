cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.38.1"
  sha256 arm:   "0e2be569de2c938a9044fd610a39b5b80bbeed28ad5a1091b8fddfdcd975f52f",
         intel: "57839bc5bc8dbab15e879a9713933b01779d02a9e6110ec9f092e9b8a107cca2"

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
