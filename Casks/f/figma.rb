cask "figma" do
  arch arm: "mac-arm", intel: "mac"

  version "116.16.14"
  sha256 arm:   "f6c37bbb3782641d519d3859dcc18b2ec66b02192bb18df091f235431003295f",
         intel: "8b14523d9b7740aedd16d35b315f094829b75c34324f7c45094003369649e07e"

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
