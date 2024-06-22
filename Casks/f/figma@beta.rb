cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.2.4"
  sha256 arm:   "2a8cce255a437dd6e9e2a8c9b49bd2e700fa00fa20741bd4f0f92fb04aaf5de3",
         intel: "c92ac4274576861f13aa932d5dfcc3f7cd50d8f38c4cad83e6a65333223de69f"

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
