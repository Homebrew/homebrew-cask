cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.11.1"
  sha256 arm:   "0786fed181cbfd043fc844236a1ee5b59a04981476571f27dff82aea0c7171cb",
         intel: "b65488c06b3b6e78929f48fe82cb621394d4133802ed2326017ed9db71608328"

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
