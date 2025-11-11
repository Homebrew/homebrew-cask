cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256 arm:   "8e44af551605a30fc2e2fde911216cfb7dba413247e6b0a5b4dc455adb2d0e70",
         intel: "5e18c28b13ffda8bf5fa20e6faa367ca0723d95ce074f8bb10670509f92c5327"

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
