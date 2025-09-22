cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "40a91237d86e24cfdc3861804c60d3a18de42e8736c194be6e88d5a3c2482860",
         intel: "93c482be6b4def6ceb2b9fbe990dbbbd109dac1e8fb818de9fcb33cbd30b438f"

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
