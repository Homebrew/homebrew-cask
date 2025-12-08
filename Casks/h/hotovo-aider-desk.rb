cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.43.0"
  sha256 arm:   "68bf08178d573a9f3472558e420f6134215e05787fe98674bac886a24e15d016",
         intel: "937af67aa07af159a45a54512676e8342f9820976c6e9fb292efc1e0c7463522"

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
