cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.7.3"
  sha256 arm:   "b02046490be1944288c88cabf0eeca6f9190a77431fdd59087a85644aa0ae123",
         intel: "6d52e635c9f3f86f1bfed4638691d5a2b4455e39fc402d20310285d7807bc555"

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
