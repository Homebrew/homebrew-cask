cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "126.1.0"
  sha256 arm:   "130a9cf2f67bb59492543030328587cff2b281faf77ce0e4f0bf4cc26108b8a2",
         intel: "dd70b04513c17df5946c92e7dd21b6ff5e4a806238c6ba2da9c7f6ec8c64f6b6"

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
