cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.9.5"
  sha256 arm:   "87be6ef7b573cb823b243f3be9206bdacea9afcb4720ddab0ae81f3c03c1ec43",
         intel: "0611eab253dbf0b7278890d26f039b00cf74762c3478b3969975661e849425ab"

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
