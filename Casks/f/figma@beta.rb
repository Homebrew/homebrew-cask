cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.0"
  sha256 arm:   "f6a3b28eefeecc1281e1cd68637f7913247c17de221abd8e8373694549ac3139",
         intel: "3f836ba3c8d6fb0ee82ce1786cbb19efd2cf3f79ecdc5666d4a95ac0f2e6604b"

  url "https://desktop.figma.com/#{arch}/beta/FigmaBeta-#{version}.zip"
  name "Figma Beta"
  desc "Collaborative team software"
  homepage "https://figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/beta/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
