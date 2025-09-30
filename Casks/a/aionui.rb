cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "629eaf57d58049cdd10324820b36d2684df77aa19f602bcc8ed5683b42266389",
         intel: "4fea4b40ccabedcb7292f5e15134e1c1767c2207e9d3531e8791e7de887c02e6"

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
