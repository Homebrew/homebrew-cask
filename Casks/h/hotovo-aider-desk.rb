cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.40.0"
  sha256 arm:   "83fe5c966e1aed8153c18d757ed3a43d79ae9b0e50efe742440ce58257830c1b",
         intel: "3ebcc1c1e6b1f45e1d5843a62c44bee7119ae394d24a14967a818beabce13142"

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
