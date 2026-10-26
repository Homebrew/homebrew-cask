cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.10.13"
  sha256 arm:   "2f8dfb7f737a750bdc30a0572ae5d3179ff1b8282c6001e5536880b394a63445",
         intel: "f160596f4f16d36a4347d9e01719d771b2fdea3d402b569dd98e5ba2e2b471e5"

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
