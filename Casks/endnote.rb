cask 'endnote' do
  version '8'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.endnote.com/downloads/X#{version}/EndNoteX#{version}Installer.dmg"
  name 'EndNote'
  homepage 'http://endnote.com/'

  container nested: "Install EndNote X#{version}.app/Contents/Resources/EndNote.zip"

  suite "EndNote X#{version}"

  zap trash: [
               '/Library/Application Support/ResearchSoft/EndNote',
               '~/Library/Application Support/EndNote',
               '~/Library/Caches/com.ThomsonResearchSoft.EndNote',
               '~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist',
               '~/Library/Services/ENService.app',
               '~/Library/Spotlight/EndNote.mdimporter',
             ]
end
