cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.10.3"
  sha256 arm:   "6c1116d51f459674d34115428923794b939f700bed782f228a973ca0a3e1e49e",
         intel: "a1737741c5ff513d4361453318ef5b03d10684e0b94c698b04b6bcfc2f664974"

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
