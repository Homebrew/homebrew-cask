cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.51.0"
  sha256 arm:   "c8400ef6c200efeec120ce4a65d47c8eb9ca6f6754805744cb1ee7a215f9d26d",
         intel: "e23f394534016da3e13168c4e39a9fa4c1423818f858e65eb40cd4a2291c29dd"

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
