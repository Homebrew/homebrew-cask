cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "125.8.6"
  sha256 arm:   "33c83b5323fed4794ab3b119fcb2241b2bf662c9782b8ab7b53f5078f00635ca",
         intel: "406182c6cfa8f7f60488e91d3bf27a32d09c334c89eca7cc0ee2959302a5c8ed"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
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
