cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.2"
  sha256 arm:   "dcf9eafa812641f27e8b5d5ecdeb5ec226fd6a904bd3238897fab129c916e1a7",
         intel: "00ac0dfba1a9e2332595dfc73138458631350c82595c27fcdfcfa9720ac81d75"

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
