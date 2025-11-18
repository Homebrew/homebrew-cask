cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.4"
  sha256 arm:   "a915382b95c82eb18403d610437434e7ea34bca6b56489c549e8455391738722",
         intel: "8e3afc382399e3473567457d9dd1be39f904adb88377022334c8828786f77690"

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
