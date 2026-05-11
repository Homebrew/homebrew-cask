cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.65.0"
  sha256 arm:   "00c896f0ed4b81eb9bb138925c7760b20bbb16d1282fd307efa66e32dac501b8",
         intel: "6e339296f462208fdfe74480a0f1f35682913592d4ea51d597c91e56b25e0da3"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
