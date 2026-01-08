cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.9"
  sha256 arm:   "5300e94d0917b7de7b05a2724a0f7b6831cc6d5ec58b60c46037a3396d4592e7",
         intel: "46d009ec76050b9a4ec222c062b5c1e89d563969bca160f8cc4d92f7ef6c766d"

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
