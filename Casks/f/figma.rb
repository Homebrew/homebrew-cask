cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.11"
  sha256 arm:   "f5191c182bc74e3d0f5b9f887e3c1a636f850513b38bfc3ac4cd5d0601726e02",
         intel: "2679db21d733c4224624fcccb80bd2e7228d8590264e5298b67af8f48b668693"

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

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
