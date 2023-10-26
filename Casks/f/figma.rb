cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.14.7"
  sha256 arm:   "eeebfb10f8a2f21e9df745f7dd6cef7f600182160115349323735e9a2c40f094",
         intel: "ebcf3e79090c629b291a9e794d869235470dfa6a221bda4f9e88464580b8229b"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
