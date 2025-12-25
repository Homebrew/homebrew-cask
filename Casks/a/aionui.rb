cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.7"
  sha256 arm:   "bd21e4aec224da788f47f1a6d12e7abc1a3ea1b2b2caa708102fc64ba9ee2383",
         intel: "617440e3ee04d51786c141a2ebd8f6821aab85de08f64a984a2aacb05e1e9160"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUI"
  desc "GUI for Gemini CLI"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AionUI.app"

  zap trash: [
    "~/Library/Application Support/AionUI",
    "~/Library/Preferences/com.ioffice.aionui.plist",
    "~/Library/Saved Application State/com.ioffice.aionui.savedState",
  ]
end
