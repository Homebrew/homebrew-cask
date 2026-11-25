cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.13.1"
  sha256 arm:   "4b78c073c5017a7148339accbe4f63c4a4998375861e66e5902817b4ddd08134",
         intel: "f197cee0ee22e4a6858e72b90bdf49c88f0f73599adc8a7cadf88f49b7388db9"

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

  depends_on macos: :ventura

  app "Figma Beta.app"

  uninstall quit: "com.figma.agent"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.figma.desktopbeta.sfl*",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
