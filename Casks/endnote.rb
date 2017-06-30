cask 'endnote' do
  version '8'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.endnote.com/downloads/X#{version}/EndNoteX#{version}Installer.dmg"
  name 'EndNote'
  homepage 'http://endnote.com/'

  container nested: "Install EndNote X#{version}.app/Contents/Resources/EndNote.zip"

  suite "EndNote X#{version}"

  zap delete: [
                '/Library/Application Support/ResearchSoft/EndNote',
                '~/Library/Application Support/EndNote',
                '~/Library/Caches/com.ThomsonResearchSoft.EndNote',
                '~/Library/Services/ENService.app/Contents/Resources/EndNote.icns',
                '~/Library/Spotlight/EndNote.mdimporter',
              ],
      trash:  '~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist'
end
