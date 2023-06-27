cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.10.9"
  sha256 arm:   "72728ad0d49eec758a94a2b8eb1a50093fdf0c0bb1571e2fe983198ec6434f05",
         intel: "7bb3cc0298c4b543f006ff920aac93abf61e8fcdf27ab97b1486a7207f37fa45"

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
    "~/Library/Caches/com.figma.Desktop",
    "~/Library/Caches/com.figma.agent",
    "~/Library/Preferences/com.figma.Desktop.plist",
    "~/Library/Saved Application State/com.figma.Desktop.savedState",
  ]
end
