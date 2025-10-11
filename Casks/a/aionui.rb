cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "c000e0a2cd29be944bab87c681deea1d6729b41c8e0d955028028f5fbd95231c",
         intel: "7eeadbbe5bbd429a9f3ab5a82ba1ceb8f3b66d3cbca02233b667ea09e99f21af"

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
