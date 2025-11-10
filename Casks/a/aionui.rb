cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "ee4bdda2c780d6e151d1708d73cc13bf655191128ff6031f40b9871778ebfc80",
         intel: "ba49a3abedea3dd7380a0ad3ca930388b0f1c75b74e72538e295f7eefd1af5ce"

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
