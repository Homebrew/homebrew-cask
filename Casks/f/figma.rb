cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.17.13"
  sha256 arm:   "1c520c4f2ab34c8b4b487324a64210cdc84c6941af55e71d5d655db0aedea64d",
         intel: "526cae4ca14ab48aafdda18b00e7d485efaaa9406019a462f1c59f70f76005c2"

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
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
