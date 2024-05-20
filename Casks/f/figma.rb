cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.0.2"
  sha256 arm:   "55253bb0021c82f6e5033b6198c625a62b220c1d038f3f125f8f458f7461d663",
         intel: "ceaa7bf5664f6c17f3044878de52af087789bd27e6e97eeba35af69ef5d56b32"

  url "https://desktop.figma.com/#{arch}/Figma-#{version}.zip"
  name "Figma"
  desc "Collaborative team software"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/#{arch}/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Figma.app"

  zap trash: [
    "~/Library/Application Support/Figma",
    "~/Library/Application Support/figma-desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
