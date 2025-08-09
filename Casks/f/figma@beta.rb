cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.8.2"
  sha256 arm:   "2af97428c1cfb25c8bc647baf71598a211136a2f28aed462c38b5fb83c48ae47",
         intel: "0e61b3e192cd9ec5ec0abf24d2c98dc3208569d0ef3907d8c95fb2b7d652a8ae"

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
