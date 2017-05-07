cask 'endnote' do
  version :latest
  sha256 :no_check

  url 'http://download.endnote.com/downloads/X8/EndNoteX8Installer.dmg'
  name 'EndNote'
  homepage 'http://endnote.com/'

  container nested: 'Install EndNote X8.app/Contents/Resources/EndNote.zip'

  suite 'EndNote X8'
end
