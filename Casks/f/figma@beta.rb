cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.9.3"
  sha256 arm:   "7f5c744781657e45480be4347dc491c96125c15971605c84a7129b5bcadeaacb",
         intel: "375edacdaa8023a9ce8b6d38f8c6dc2723c1ae51a500c92951a78fc4ece7930a"

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
