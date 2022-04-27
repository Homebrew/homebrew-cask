cask "endnote" do
  version "20.3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.endnote.com/downloads/#{version.major}/EndNote#{version.major}Installer.dmg"
  name "EndNote"
  desc "Reference manager"
  homepage "https://endnote.com/"

  livecheck do
    url "https://endnote.com/downloads/available-updates/"
    regex(/>\s*EndNote\s*v?(\d+(?:\.\d+)*)\s*for\s*macOS/i)
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
