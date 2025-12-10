cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "be1a8b3829a95d6a2481bab494a0d5979e03cd242534df62d5b02247045406bd",
         intel: "697eea3b6008796689d642e7a3d4445aa6f1254506408ecbb97a3f441eae40ae"

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
