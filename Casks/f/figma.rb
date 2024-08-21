cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.3.1"
  sha256 arm:   "65003f5a6b2ff428a544b4a26a46c353a7c0dce7b3b71d7894d3000bda5fff1b",
         intel: "3b45d2eeb26eb3b797510438abb4d4dffbc1da71a19f4e4371afd6a6b933ccb3"

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
