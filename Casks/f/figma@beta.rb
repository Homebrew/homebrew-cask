cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.5.2"
  sha256 arm:   "b93a55d1e0dbe439fa5f848878c0df8745716b346d18173f2f162da9babc71f8",
         intel: "ca2a9eb0ede464b29e757cf5f249ec663bf22246cfa556b9e0030c09565cf1ea"

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
