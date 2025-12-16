cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.0.1"
  sha256 arm:   "d817319073778295db4df3ffa5035f67ffcfeb9cb6bd14451b0f9e56ee3186ff",
         intel: "d53aeff782e3bd867ea57a5f7a6e9cba8e460626efe36c8a547389598676e2da"

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
