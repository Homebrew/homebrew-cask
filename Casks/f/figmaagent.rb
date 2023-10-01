cask "figmaagent" do
  version "116.13.3"
  sha256 :no_check

  url "https://desktop.figma.com/agent/mac/InstallFigmaAgent.dmg"
  name "Figma Font Installers"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://desktop.figma.com/mac/RELEASE.json"
    strategy :json do |json|
      json["version"]
    end
  end

  installer manual: "Install Figma Agent.app"

  uninstall quit:   "com.figma.agent",
            delete: "~/Library/Application Support/Figma/FigmaAgent.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/HTTPStorages/com.figma.agent",
  ]
end
