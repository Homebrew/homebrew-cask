cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.4"
  sha256 arm:   "ee7d21a55275bc0ea1c84b685b66c88225d2ebe820e6a31aed0338c26a7e1102",
         intel: "f585d989366bba705bc09bf4e5e36a850aa2286334c2d2a4e9a1731c7a82f867"

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
