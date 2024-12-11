cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.0.2"
  sha256 arm:   "08cac8671931303d4069923dad8bc38bcc1d154d64ee67b884798535abb9ff6f",
         intel: "9b5c68626f654ef1ca51165cc88727b540045b2bb53d9a62ab11333efb0b9129"

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
