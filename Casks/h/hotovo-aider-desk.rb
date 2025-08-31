cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.28.1"
  sha256 arm:   "e5a2f452b509473cab315827b73b000f21c1d984c8b3303cb462fac4764ab73f",
         intel: "50195bac468d93de90a8f59ee13691c479858bb62159025cb03d553c3117755c"

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
