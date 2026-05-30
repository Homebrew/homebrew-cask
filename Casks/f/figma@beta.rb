cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.1"
  sha256 arm:   "ddd3cfbde0bd2fd9a6ca3fb3a7414a544ac07586668170b2942dda7291ec2945",
         intel: "4487a8bd3a61606bc30b33d9c27448b878d904f779b4948376f20b92a6ffeb06"

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
