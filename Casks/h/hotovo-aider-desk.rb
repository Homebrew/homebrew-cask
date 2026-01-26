cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.50.0"
  sha256 arm:   "ee07e2cfd7c44a02382abff8b543ca8a7b9f70b6493c25422195603755a84396",
         intel: "d9c1aa54596345c0db3cbbb4ee677f87ac61e4a5654036e97f0267514abb9722"

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
