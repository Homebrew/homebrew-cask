cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.6.7"
  sha256 arm:   "9b0e52c692957ff2365a8eb9f0a36b7dde23d7c4009a2b992a448ac0c19df0b7",
         intel: "4d97160bb77de3d39a65e3454bb49792d99b8198e97e9e0b33c3b4ffe1f8ab6f"

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

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
