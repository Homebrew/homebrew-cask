cask "endnote" do
  version "22.0.0.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/2025/EndNote2025Installer.dmg"
  name "EndNote"
  desc "Reference manager"
  homepage "https://endnote.com/"

  livecheck do
    # update url to "https://download.endnote.com/updates/#{version.major}.0/EN#{version.major}MacUpdates.xml" after
    # version 22 starts receiving updates, see: https://github.com/Homebrew/homebrew-cask/pull/210166
    url "https://download.endnote.com/updates/21.0/EN21MacUpdates.xml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//updates/build").map do |item|
        version = item.elements["updateTo"].text&.strip
        match = version.match(regex) if version
        next if match.blank?

        match[1]
      end
    end
  end

  container nested: "Install EndNote 2025.app/Contents/Resources/EndNote.zip"

  suite "EndNote"

  zap trash: [
    "/Library/Application Support/ResearchSoft/EndNote",
    "~/Library/Application Support/EndNote",
    "~/Library/Caches/com.ThomsonResearchSoft.EndNote",
    "~/Library/Cookies/com.ThomsonResearchSoft.EndNote.binarycookies",
    "~/Library/HTTPStorages/com.ThomsonResearchSoft.EndNote",
    "~/Library/HTTPStorages/com.ThomsonResearchSoft.EndNote.binarycookies",
    "~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist",
    "~/Library/Preferences/com.ThomsonReuters.EndNoteCustomizer.plist",
    "~/Library/Services/ENService.app",
    "~/Library/Spotlight/EndNote.mdimporter",
    "~/Library/WebKit/com.ThomsonResearchSoft.EndNote",
  ]
end
