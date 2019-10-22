cask 'qxmledit' do
  version '0.9.13'
  sha256 '93001a20000f8fc8ce354eac7ccc2cb3270b94eb5f24383a30157111d4456200'

  # downloads.sourceforge.net/qxmledit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qxmledit/rss'
  name 'QXmlEdit'
  homepage 'https://qxmledit.org/'

  app 'QXmlEdit.app'
end
