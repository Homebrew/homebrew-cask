cask "endnote" do
  version "20"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/#{version}/EndNote#{version}Installer.dmg"
  name "EndNote"
  homepage "https://endnote.com/"

  container nested: "Install EndNote X#{version}.app/Contents/Resources/EndNote.zip"

  suite "EndNote"

  zap trash: [
    "/Library/Application Support/ResearchSoft/EndNote",
    "~/Library/Application Support/EndNote",
    "~/Library/Caches/com.ThomsonResearchSoft.EndNote",
    "~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist",
    "~/Library/Services/ENService.app",
    "~/Library/Spotlight/EndNote.mdimporter",
  ]
end
