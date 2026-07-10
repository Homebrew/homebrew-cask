cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.7.5"
  sha256 arm:   "94df2e47b570b182804492e761879308422f5a6ab7a69bca0d1baac6c5746564",
         intel: "c7eb04b942419a6d511caf7bb22f606d41849d1e136d7b1f907bc82f226fc20d"

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
