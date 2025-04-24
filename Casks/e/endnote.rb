cask "endnote" do
  version "21.5.0.20846"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/#{version.major}/EndNote#{version.major}Installer.dmg"
  name "EndNote"
  desc "Reference manager"
  homepage "https://endnote.com/"

  livecheck do
    url "https://download.endnote.com/updates/#{version.major}.0/EN#{version.major}MacUpdates.xml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//updates/build").map do |item|
        next if item.elements["type"]&.text&.include?("html")

        version = item.elements["updateTo"].text&.strip
        match = version.match(regex) if version
        next if match.blank?

        match[1]
      end
    end
  end

  container nested: "Install EndNote #{version.major}.app/Contents/Resources/EndNote.zip"

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
