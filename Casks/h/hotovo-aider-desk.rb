cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.47.0"
  sha256 arm:   "242ddfff90552b68f2ef109651d4fd6f02f6e22cef7cb09282bd8dc93b291daf",
         intel: "3c807b23e26881f7fd0a64b00ae32093db0e3a6b884fb3aff4d123be0b077807"

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
