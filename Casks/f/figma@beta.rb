cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.7.4"
  sha256 arm:   "abe595665d550cceb089e408d69f06f803b626903ceadcb54ea2b1aa2304b733",
         intel: "36813f06458e53a12b02c3a442f04fdb8da0c55b75d0395d745d7c34334a1488"

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
