cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.10.3"
  sha256 arm:   "85add0c661fd5b6beb19b73d3bbc785c86237a2cd91f48d8884e988f9f231e0b",
         intel: "26ca5244861e5489b570e01f254ea55309da6eb7e0bb20a40abd79634b1204e6"

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
