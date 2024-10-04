cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.4.7"
  sha256 arm:   "103fc91c73b1b2120592e9e4ca3e067966bb90b52dc19dfe7ffad13f5bd93a7f",
         intel: "5b535a38e48c9c7f57b582c6ebb529181eafbd54e5a2e7da5014e7f22a0c09b2"

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
