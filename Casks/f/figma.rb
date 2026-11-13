cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.11.9"
  sha256 arm:   "62fb60a7291eec88438433aab9beba636a80c6bbda1d862f41b4312f46e69ec4",
         intel: "bac0215feba4a4e783af8fbda8f1f584cb6492d1269a4d518c6a0b16f65f4957"

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
