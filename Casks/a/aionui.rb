cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3"
  sha256 arm:   "86cd2a35a113b6fed5f353cfd71436d369ad46bdc5c9faee3f4a89a09b84add5",
         intel: "311e55753c5a9d50370140367fc97c17b009abfa8badbfdbbbce4eb8ec408d48"

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
