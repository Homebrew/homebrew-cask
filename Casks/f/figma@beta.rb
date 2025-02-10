cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.2.1"
  sha256 arm:   "df573deef76c656e01c5067d465c4e8bf9618b8f6410e2084a3f135a9b64d059",
         intel: "936c99b9ed74b33dccbb5bc6832d59565a45a55187aeac5c9d4fce362b111258"

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

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
