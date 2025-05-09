cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.5.2"
  sha256 arm:   "3aec340c416961e3ec4df79d61d5d517349ea6783f059fa01c1d33724c6c2f5a",
         intel: "96f60c68aea3885969815ded37deb91dcd6ae378c209caf7ffa70196150e0453"

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
