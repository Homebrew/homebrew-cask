cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.8.4"
  sha256 arm:   "dc902a893dcdab4be1119dc47df828403b56532626a4805b7a2a18f777e753e3",
         intel: "37d69396fda7928b29e2207a9065bf884f2eb573a8e9678a2ba2c48d5a2c0f5e"

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
