cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.11.11"
  sha256 arm:   "d52d56de2bf91e5e5d6feb2215c14d49a009a2cee9a3e5708e24f54f514bc2cc",
         intel: "a24750da90bd989c75ca13964e71358924a0f300ce677e4a1e15d5eaa92dec59"

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
