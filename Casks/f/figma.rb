cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.11.7"
  sha256 arm:   "33d8a13780774c03071b22d73dcff68a0ec59f7426842ca0f7db3a1035755c9b",
         intel: "27a6c694375c73333116f312723c143dcbd6df7bbb3d96555c03e79ef8ce1b86"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json?localVersion=#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Figma.app"

  uninstall launchctl: "com.figma.Desktop.ShipIt",
            quit:      "com.figma.agent"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.figma.desktop.sfl*",
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/HTTPStorages/com.figma.agent",
    "~/Library/HTTPStorages/com.figma.Desktop",
    "~/Library/Preferences/ByHost/com.figma.Desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
