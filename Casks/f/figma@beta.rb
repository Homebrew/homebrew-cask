cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "124.6.0"
  sha256 arm:   "42ce783c40caa60e914a302df2c57bc804a7184ab5657d9fda786944975fbd11",
         intel: "fdd767a256a41f1d7ab0b62537c0b994f3018b8e17930b3869213d153d906a97"

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
