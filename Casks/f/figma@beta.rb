cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.0.2"
  sha256 arm:   "6b8747978e947a0a2d207f5b4690a14f950c8c3c471cff8694cff367914f3866",
         intel: "61cab283ed91e5a43680ad7f83d6f2afe5f7073b0aac9a97d487d673104edb5c"

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
