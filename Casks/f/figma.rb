cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.15.4"
  sha256 arm:   "aa30e0740dece769a20992b9fa84682dabd6f17dfa9c51c21f76de30d40632e4",
         intel: "2ec95ee57162f69e56e36f4ee85a2394427c9a373135336381d777827f750634"

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
