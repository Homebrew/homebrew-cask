cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.3"
  sha256 arm:   "69dc3452f7a4aba10bc199778b3a035b255545a5c2f9274da0962c4ba2265b92",
         intel: "c1ba58c73d164b887b2a7f302a1eae9f17b2e13a3a4bfb31376890c6cb1b2363"

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
