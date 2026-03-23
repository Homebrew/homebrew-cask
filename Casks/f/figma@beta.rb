cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.5"
  sha256 arm:   "2e6c94b170d97bddae8f35be19ff1d9ae49d639b4c09399bbf363291683e624c",
         intel: "8357a29b7cf665f46e9268826f43c32ca644e11b3ba205a426e9d9aebe94f1a9"

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
