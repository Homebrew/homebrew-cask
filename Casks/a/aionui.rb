cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.4"
  sha256 arm:   "8c5fc592736d648fb92e563da69131b630e43c2f266709bbe71ec46abe131fb3",
         intel: "efdf008604f144d7b9830f73de14f47a22986c935a421c709fb10b0a1e5883cb"

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
