cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "5435945a2547f21df0d619e31fe6fd3f9a4394cb6c1b8a54a489138bfbf7c826",
         intel: "168188b468b5bb13263f56123089bed61f4a9b5462af89b126a3e18198b940a7"

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
