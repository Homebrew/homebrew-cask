cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.42.0"
  sha256 arm:   "ad21e43427660fea3b69b02dbe76499cce02247de426044a5fa4da67c1a8f876",
         intel: "91169368cc815abdc9a08a4655ff260318495b514596c9303fc3adf7b97c1084"

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
