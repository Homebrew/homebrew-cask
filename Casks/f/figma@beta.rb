cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.6.1"
  sha256 arm:   "c410ca04d5b676e28ab7c5865580810cce2d75aa4dcfd41094ea6a62518cf2f8",
         intel: "ee115dd5155f4e2d87919811fbf38e1b54f6fa5fd7a12b03d0d1244c97af9105"

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
