cask 'qxmledit' do
  version '0.9.14'
  sha256 '7c55a9d4edd679ef7c3e6640c06f1aece05e1118e0d48dc65a96e836fafdafe0'

  # downloads.sourceforge.net/qxmledit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qxmledit/rss'
  name 'QXmlEdit'
  homepage 'https://qxmledit.org/'

  app 'QXmlEdit.app'
end
