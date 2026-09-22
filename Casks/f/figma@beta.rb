cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.10.2"
  sha256 arm:   "f44038f6c16ba91ea1358aef5aa91046ea7cfbde0da69d807969770e17375f0c",
         intel: "1f1da81c6aa06bb49b8805bc7676b2f9ddaf0cef553fe821431433c401722016"

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
