cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.2"
  sha256 arm:   "f68f93f822a2d980eefa14a6b568a5f9a4d708a86fcd5a8a5d0854896946389c",
         intel: "2ec5e642bdbba07ec39a0e738f5516416bcf470b0855c4cb35902ace1d96ec15"

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
