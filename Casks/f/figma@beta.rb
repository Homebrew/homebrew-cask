cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.5.3"
  sha256 arm:   "f1ed7193bef708e193526fc8c75fb9be8caefc1d12217631020c074cba600c2f",
         intel: "38d2af7ec2236ac3785fc39cf15610c8086792a36e1c9350c40481c539a62030"

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
