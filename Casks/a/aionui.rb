cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "ee4bdda2c780d6e151d1708d73cc13bf655191128ff6031f40b9871778ebfc80",
         intel: "05e99881bd1f464a6a5f57c0b2b469291fa4abfb94e2f0971dc572063cdc52dd"

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
