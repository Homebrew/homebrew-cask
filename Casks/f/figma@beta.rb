cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.10"
  sha256 arm:   "6b3d4e089daa3e956fa2ecf861b2d4d2651d25ac55014fb5e4371762377b9239",
         intel: "ec5e2137cf8d323e8b465f04e3a57b6177f63b763c62321c6e2e973b116039f3"

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
