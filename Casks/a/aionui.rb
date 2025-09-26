cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "189792e94f9b23a812be0ff1f169072b9be18e6e431321244705985404b09541",
         intel: "626978d7059eb1072181bf1d62266611b313549601f7b0ddaab95ca9edbf0607"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUI"
  desc "GUI for Gemini CLI"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "AionUI.app"

  zap trash: [
    "~/Library/Application Support/AionUI",
    "~/Library/Preferences/com.ioffice.aionui.plist",
    "~/Library/Saved Application State/com.ioffice.aionui.savedState",
  ]
end
