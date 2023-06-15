cask "endnote" do
  version "21.0.0.0"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/#{version.major}/EndNote#{version.major}Installer.dmg"
  name "EndNote"
  desc "Reference manager"
  homepage "https://endnote.com/"

  # The livecheck url should be updated once version 21 begins receiving
  # updates. See: https://github.com/Homebrew/homebrew-cask/pull/147759#issuecomment-1560267775
  livecheck do
    url "https://download.endnote.com/updates/20.0/EN20MacUpdates.xml"
    strategy :xml do |xml|
      xml.get_elements("//build[@version='*']/updateTo").map(&:text)
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
