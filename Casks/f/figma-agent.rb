cask "figma-agent" do
  version "124.1.16"
  sha256 :no_check

  url "https://desktop.figma.com/agent/mac/InstallFigmaAgent.dmg"
  name "Figma Agent"
  desc "Font installers for Figma.app"
  homepage "https://www.figma.com/"

  livecheck do
    cask "figma"
  end

  installer manual: "Install Figma Agent.app"

  uninstall quit:   "com.figma.agent",
            delete: "~/Library/Application Support/Figma/FigmaAgent.app"

  zap trash: [
    "~/Library/Caches/com.figma.agent",
    "~/Library/HTTPStorages/com.figma.agent",
  ]
end
