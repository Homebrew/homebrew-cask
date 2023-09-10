cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.13.2"
  sha256 arm:   "58b133ec645f7f8881f469af52fba5510dc18e3a65308623acf9da9520f42b35",
         intel: "de22daf2aa2660f7768c704179914867f6d1a8cd2b615beb17e2cb7d2e9f5f51"

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
