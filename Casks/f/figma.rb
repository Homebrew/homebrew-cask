cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.11.8"
  sha256 arm:   "5f87068e71d8d7ec4f25d49f5ea820a964b62a438882cf43f5391bf036d27b7e",
         intel: "c3c175c903d7e352754159d8efa6a0133ed31f1299c729bfae0a3b43a854e050"

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
