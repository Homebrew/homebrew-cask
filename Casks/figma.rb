cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.9.6"
  sha256 arm:   "89fafc9a2bc0498645487b56f5d2bcfbc3eb5efa3d72f03227aeb5623419a0d9",
         intel: "177815307ba28db12ee0f76c9720df6fda24fda95aeddcee590a927017bd90ac"

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
