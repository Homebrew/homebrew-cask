cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.2.7"
  sha256 arm:   "aa7c1fd48fc14547ae1004dea36971baa1c2f58d6a0ce0141a15243d703bc00f",
         intel: "b23de37acf2436be7b02f4edbedd144d94cfc688a65b808a75418e50ca91ce8f"

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
