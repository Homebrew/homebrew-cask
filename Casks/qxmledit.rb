cask 'qxmledit' do
  version '0.9.11'
  sha256 'b891cb90130215f39e3f026d8d90493690abf841c9e5f07d6021ec7083ba5cb0'

  # downloads.sourceforge.net/qxmledit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qxmledit/rss'
  name 'QXmlEdit'
  homepage 'https://qxmledit.org/'

  app 'QXmlEdit.app'
end
