cask "getoutline" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 :no_check

  # arm64 (apple-silicon)
  on_arm do
    url "https://desktop.getoutline.com/mac/dmg/arm64"
  end
  # x64 (intel)
  on_intel do
    url "https://desktop.getoutline.com/mac/dmg/x64"
  end

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
