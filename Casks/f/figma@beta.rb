cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.8.2"
  sha256 arm:   "f92df19caa2479934431aa0789d4b81cdeb4b3d8017b46dc9df2fec92c36ff2e",
         intel: "94f6f6ee359c22d99a8e858c11ecb430404805e4e738a42b23186f43cf288f0f"

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
