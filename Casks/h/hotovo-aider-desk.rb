cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.31.1"
  sha256 arm:   "f29fbfd1797d6c5c3c9d679ca97cf396fdee4002e0d53fef875899777cee7e15",
         intel: "c4e32a9dcc63c3632399d9a6196e055b6173942694b393fbe78bc5da71f7f6f4"

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
