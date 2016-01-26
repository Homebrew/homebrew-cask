cask 'endnote' do
  version :latest
  sha256 :no_check

  url 'http://endnote.com/x7/EndNoteX7Installer.dmg'
  name 'EndNote'
  homepage 'http://endnote.com/'
  license :commercial

  app 'EndNote X7/EndNote X7.app'
end
