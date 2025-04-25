cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.6"
  sha256 arm:   "588f7668fb0c4676afb762e5131c1c2ee9153213af51dbfb5bb4eae8157cade9",
         intel: "065d7d2621d046d2b2369b338c3148603a6c3d6c9db126aed02cebbf2e52e395"

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
