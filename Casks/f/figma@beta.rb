cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.3.0"
  sha256 arm:   "930bf331f7b3ca7c027975bb9cb63e52ece3ed4107f2a37d5aaf1a7a89644169",
         intel: "5d62e57cabf73b1e244ac89eb3265f941cd7b52e9ad1d38a5a503f9a9ed95349"

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

  depends_on macos: ">= :monterey"

  app "Figma Beta.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.DesktopBeta.plist",
    "~/Library/Saved Application State/com.figma.DesktopBeta.savedState",
  ]
end
