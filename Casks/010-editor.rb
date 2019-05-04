cask '010-editor' do
  version '9.0.2'
  sha256 '2b22e1dc60fbba29dfba0634b188fb2dbba683c3b09a1975d870503bd750c5b8'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
