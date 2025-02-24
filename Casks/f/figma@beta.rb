cask "figma@beta" do
  arch arm: "mac-arm", intel: "mac"

  version "125.2.2"
  sha256 arm:   "0ed37afc7c9d2017a4d267b87a2c8ae339efc286762b805c12b3c4f68e701692",
         intel: "dec1b50ef93c560dced97373b60d129c467b6df74bda136fcf51595276986105"

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
