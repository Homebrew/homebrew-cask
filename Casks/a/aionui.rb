cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "483967a9096130c9411e9cfd9b59963fd2529ef69e09c2d7f303bd5ebef1dc34",
         intel: "13a918800e32069af4abb927306239284644c9d765ee9a9dd38ce2ce7b532a5e"

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
