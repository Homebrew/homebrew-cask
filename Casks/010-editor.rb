cask '010-editor' do
  version '8.0.1'
  sha256 '7c81acc0c9d6450ba1c91139848c83f53c7230fd1cf386413b8e01931e1c5161'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/',
          checkpoint: 'ace07a913b064266e59ff311a5474c64585955e201c975475e8372152ca7f8a7'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
