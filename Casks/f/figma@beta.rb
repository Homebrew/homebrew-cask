cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.11.4"
  sha256 arm:   "bf5a82f6b3e224e497e981c61f592bb03cc50f8fff6e94a45bb87f5c0f2c311c",
         intel: "6b54099f7c1a2c3a4980bc9c89244ea235dfddf53b5cb82f22751f9cc6e48ba9"

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
