cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.73.0"
  sha256 arm:   "a58e2568459c970cf903e8535febf908fe4048dc2ab72ed60ac8ab47585f9ca2",
         intel: "56002ced378b84f95464afe7d46cff9122d9716b0e9740765aaac83869e269c8"

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
