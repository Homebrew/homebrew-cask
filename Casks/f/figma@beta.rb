cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.7.4"
  sha256 arm:   "11bfabee35194d4a6684129402e6f69b1748f27fdb977150400330bff08966ee",
         intel: "869b4d49951cc76d8a1c94c2291a7a241b2e99ad390c8957b173cefcbf0576f2"

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
