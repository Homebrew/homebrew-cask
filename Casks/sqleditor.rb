cask 'sqleditor' do
  version '3.5.5'
  sha256 'baed5180887d88151cb4f09a9f73f327118fc7f335a0fba117a3bee8dc4b1bb5'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
