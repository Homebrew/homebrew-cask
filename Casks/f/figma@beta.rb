cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.1.1"
  sha256 arm:   "8d1c5fc8059f481c2175fcc6f5c8e89ae6f96c62c298741c87860a7d538c7aa8",
         intel: "262e39fc6b9a1761c6691409de7475c7c8240d466a6a3a00d42c75c20d00b0ab"

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
