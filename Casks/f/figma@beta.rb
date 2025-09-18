cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.9.4"
  sha256 arm:   "5fa3e5f0dd1c69d04316092b83efd4db35bc65700acee14ca0ff618602778d7f",
         intel: "064bcbde2fe62fa6a6f791667de549f9b332ea06c5c2fd2ce3bb799c1f353b9c"

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

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
