cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.10"
  sha256 arm:   "ec3e0a4dbe3f294ace0cc16323136ea39b8e84c8a79ac858844d4e65617a0ebc",
         intel: "cdbbc7ba0a02aac9214dfb43f497ffc362d96a0434cd8d4999a1d2c66280e766"

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

  depends_on macos: :monterey

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
