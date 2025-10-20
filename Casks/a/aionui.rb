cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "4790c82e9be7522a8ce0b70f19b7f7d578cbcec0fec3d71cf6928b8dfc1fdaa1",
         intel: "d2f33e646fd7def60f4eb8109e158846f8855bd76d8ccc635c2858feed79ba19"

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
