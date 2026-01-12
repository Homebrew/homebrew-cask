cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.48.0"
  sha256 arm:   "cc774f29e061d9029dd1f9dc234fe307220f4889813d04519eb0e4adae0a8f1c",
         intel: "e289d3f3841d737ff67825433fb62edd454a2e0627a63e2db19511dc5d22f0ce"

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
