cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.11"
  sha256 arm:   "ec9729bf631a4941c867494e9e09100d40cbd52476fba29706d5b01da700edfc",
         intel: "ab846637ee902f0cf01ad24b702e4099da0ee2af92d37e618ada5bff774f6543"

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

  depends_on macos: ">= :monterey"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
