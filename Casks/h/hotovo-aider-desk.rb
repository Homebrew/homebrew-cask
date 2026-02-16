cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.53.0"
  sha256 arm:   "d8b0495d67b4f49749aa54d195691de8af0a142d745b83615dc3212afbe0a7d9",
         intel: "98b4b8112cb676ef0aa8e83ef041dfa976ea200197a80312c55117795ccee5c9"

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
