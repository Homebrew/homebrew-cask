cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.5.3"
  sha256 arm:   "dbdca13868d0b9d9e237645434add40bb96fe9e866003649517968f0e0e973c4",
         intel: "925c1eb434a7125199673e171ba06251c62d3b39c98260c05194a705d48286d2"

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
