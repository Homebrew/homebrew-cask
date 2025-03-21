cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.3.2"
  sha256 arm:   "d76d742500f0c1aec2b55474be84e31d6bf5c55a0aaede179f897739c1cac193",
         intel: "89148ad9e71198162ed8a57638ea0880b69d6127c1c6db7613bcbac796bf0f17"

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
