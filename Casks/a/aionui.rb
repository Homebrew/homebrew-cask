cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6"
  sha256 arm:   "f4de0688f65fe9cff0f293fd5b879e412db8b58aaf1b88d9789ad635449923f2",
         intel: "fe630608e4cc8cd05c1c7cf2ff7613fd6e325b00f072bff1696e754b457f2079"

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
