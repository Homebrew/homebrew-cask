cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.5.4"
  sha256 arm:   "52cea4a75dabe7ea74d5306447af4b0d45ee543241861b906b4ca06b2bacb755",
         intel: "403e8d7bd359603b23c33d504374c94146c67bb93c34ec6d64bf6f72f7ba9d18"

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
