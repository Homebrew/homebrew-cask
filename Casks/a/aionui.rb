cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "4937bfbf70ea728212bfd44c78be527b431b39b302baa5b0830105b438e7a3c2",
         intel: "4e16bb06b72381e6353f888d055b69305e04e27929c67fed96b66655eefe64ce"

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
