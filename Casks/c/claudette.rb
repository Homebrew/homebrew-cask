cask "claudette" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "3aad742890d1b7cfdc321a3321ca505c1c879d4f62d5537556ec2e6e20021bfc",
         intel: "a46b1fd21fa32a71602382d2bc9cc22fce4e770daa185815349c0370c46c4f8a"

  url "https://github.com/utensils/Claudette/releases/download/v#{version}/Claudette_#{version}_#{arch}.dmg",
      verified: "github.com/utensils/Claudette/"
  name "Claudette"
  desc "Desktop orchestrator for parallel Claude Code agents"
  homepage "https://github.com/utensils/Claudette"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Claudette.app"

  zap trash: [
    "~/.claudette",
    "~/Library/Application Support/claudette",
    "~/Library/Caches/com.claudette.app",
    "~/Library/HTTPStorages/com.claudette.app",
    "~/Library/Preferences/com.claudette.app.plist",
    "~/Library/Saved Application State/com.claudette.app.savedState",
    "~/Library/WebKit/com.claudette.app",
  ]
end
