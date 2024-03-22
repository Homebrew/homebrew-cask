cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.17.11"
  sha256 arm:   "26026d512bb0a29674f62d1525e6cae1123fc6c3744a013ddd8108d0ab8b8365",
         intel: "b6f3d82bbdb00beee3ccc564cb2ba288eed030c5ad62fdc9e3f28d2236a19bd8"

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
