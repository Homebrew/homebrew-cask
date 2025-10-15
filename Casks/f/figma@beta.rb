cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.10.2"
  sha256 arm:   "ed2c0b403c7b465fc1c44978bc7c1a6ca324430038234b751f25a17cfddcdde4",
         intel: "436bf2fd7752d417822b96d7f4f58f540837ca2aad8d17f57d11ee5934b158bb"

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
