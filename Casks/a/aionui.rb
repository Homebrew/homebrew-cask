cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.10"
  sha256 arm:   "c493ceee7edb0d38309b90d803ded527eb40ad6435247bee4a81ed07468225ae",
         intel: "6ce8a4d50613ec8b1491cf3469413accb27d6a952af6811914172850ccea28e5"

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
