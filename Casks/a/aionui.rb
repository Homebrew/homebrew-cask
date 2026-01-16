cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "485410643578cb9bb7eab54e92bd9754d395f3f182da97f3e83fcac41c49c564",
         intel: "b98495711a2f136b92bc6ca85726d0aba1c7a8148e267a4770e7c171591b776b"

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
