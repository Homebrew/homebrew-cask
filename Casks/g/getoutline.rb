cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 :no_check

    url "https://desktop.getoutline.com/mac/dmg/#{arch}"
  name "Outline"
  desc "Fast, collaborative, knowledge base for your team built using React and Node.js"
  homepage "https://getoutline.com/"

  depends_on macos: ">= :catalina"

  app "Outline.app"

  # locations to zap (uninstall)
  zap trash: [
    "/Applications/Outline.app",
    "/Volumes/Outline 1.3.1-arm64/",
    "/Volumes/Outline 1.3.1/",
    "~/Library/Application Support/Outline/",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
  ]
end
