cask :v1 => 'endnote' do
  version :latest
  sha256 :no_check

  url 'http://endnote.com/x7/EndNoteX7Installer.dmg'
  homepage 'http://endnote.com/'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EndNote X7/EndNote X7.app'
end
