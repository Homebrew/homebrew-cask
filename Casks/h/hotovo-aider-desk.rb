cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "df4b3d55bdcd6766041503fa73c1d194ecb708608de44873df25c225da3e385f",
         intel: "66a1f53de8d62c66df9d8bd13acad8692017a2c07cdab8e8d2133483cd238529"

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
