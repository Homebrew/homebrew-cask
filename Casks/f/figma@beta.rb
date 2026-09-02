cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.9.4"
  sha256 arm:   "c353db981209f4613fcff669acdda620654634cdfdc75ba1204887b9b208e78a",
         intel: "d1e166936c6491ee8323369be11ad550201aae4626c8a0c0c04fe6cc99f6c081"

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

  uninstall quit: "com.figma.agent"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.figma.desktopbeta.sfl*",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
