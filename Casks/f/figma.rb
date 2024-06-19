cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.1.6"
  sha256 arm:   "933ac98b788fc8024f1cbed1d3d70ca27a22a0df78afe344d27a9ea70e2b001f",
         intel: "903759e1040d1c0bff68640972368dda40bcd46f2259728316481af99567b3d9"

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
