cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.11.1"
  sha256 arm:   "97668dcdee05d910526f249bafeaf203e12bf82ef13e99566678b52b80ffbcf7",
         intel: "0d8dcc6d2e9aa43ecb7cd9c0e051bded25251bd7e25e1e4a498e623a92de8f2a"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
