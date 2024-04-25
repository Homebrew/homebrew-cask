cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.18.6"
  sha256 arm:   "406c366db2e9a9ffd8ac9b45e05dbb7448c120368558cee173a1a3e77ac854a0",
         intel: "0c7c731eee7dff0ebefe5f2a3ede0ce615df4c664e4a940cd5ba63e4201d6180"

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
