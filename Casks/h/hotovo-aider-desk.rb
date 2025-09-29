cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "32a1dd9ccda7e2e828f9840fa967a666c197c2252f14501475471654a210d422",
         intel: "3f368d1e067323f5ea2cfce80344fe218eee9f2db769d16c634e6c3652c3d4d2"

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
