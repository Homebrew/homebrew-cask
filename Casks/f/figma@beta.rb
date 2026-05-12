cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.4.6"
  sha256 arm:   "1530bf6d9958c736fc99596722e8c4c99576ed7a48724607734fa35ff10c11a4",
         intel: "ec6d4b56a9d0dd7aa25e67d90fc2d4e364981cdfcb82febbe90baeee2b4afd6c"

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
