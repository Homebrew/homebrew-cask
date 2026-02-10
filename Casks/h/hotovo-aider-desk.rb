cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.52.0"
  sha256 arm:   "a281c48b1df4bd4b08fc4792dbda6e70232845692063a49711458bacb1409f73",
         intel: "a897018bb0aabd2cee0556a56e2ce8d047cd33f992ea39ad289ef7f7c7c530dc"

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
