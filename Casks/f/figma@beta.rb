cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.4.8"
  sha256 arm:   "49a265f8e8a09ff4920adfa631e1d7201a21db8fc6a5a0f10ea1a369221f940f",
         intel: "55cbf75359d26bc24513b5916d34980bd522dfca9b988d74e86d272365f085b7"

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

  depends_on macos: ">= :sierra"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
