cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "124.2.9"
  sha256 arm:   "96d952f468b6d1cc57d959bd18d74fcabe4b03d25a287de625b25602ad4fa702",
         intel: "9a5570eb4ddb526a41cd0dbb79f3ceb68bb05466159297a8926ba8a7014bf353"

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
