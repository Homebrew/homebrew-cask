cask '010-editor' do
  version '9.0'
  sha256 '738c4bb15ef739494eb6d4f6662858dc047bc392329368026e05eb3e91271367'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
