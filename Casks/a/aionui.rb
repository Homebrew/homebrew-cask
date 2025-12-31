cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.8"
  sha256 arm:   "b870256fb774273c2126b1d8ea30963abb16dd6ad568831d770f409dc3fe6f0e",
         intel: "94aa8c9239b8812ab6fb7114ede409751e45062382b14ba4b8501f488f347bdb"

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
