cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.1"
  sha256 arm:   "c6358b514e82ebc277723958cb2cdc55f73f9c36a9967ffa2b8ec94906f5d284",
         intel: "3278b8af726aff38d99a030913e8b6739c9285795404b8be43e59511f64587c0"

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
