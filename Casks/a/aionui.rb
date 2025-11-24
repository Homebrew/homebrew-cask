cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.5"
  sha256 arm:   "8b636d327101130570c59c8d881757f80134c9e24f3db9a741e8c2c552b1c174",
         intel: "9b50832b1b04d097de367855b06deaf6cbe6ac3cd5a338e0c3bcec717b7bc18b"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

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
