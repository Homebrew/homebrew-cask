cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.2.2"
  sha256 arm:   "c6a180d72ca0a7476ce40cc5aedc32bf172c8f81d7ec9dd49498fc99c34c2bcd",
         intel: "5cc2ca8cd2300e2c88cb6832ea6141b4c138438430079ef5f57a5830eef4d943"

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
