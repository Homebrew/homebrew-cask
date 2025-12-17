cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5"
  sha256 arm:   "2075121cdd79b23021c3bf1945aebe48fefde3625f46d7d4ea23b530858d14d2",
         intel: "71c496ebf474e734b3a6ed571a3008f549b47a056acddae7ef75cd8da7b186e3"

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
