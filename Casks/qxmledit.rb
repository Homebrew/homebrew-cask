cask 'qxmledit' do
  version '0.9.15'
  sha256 '68761bcfdac5e270e075130b795633e8ee20428c9ccefb1ce6f257798ce71fd3'

  # downloads.sourceforge.net/qxmledit/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qxmledit/rss'
  name 'QXmlEdit'
  homepage 'https://qxmledit.org/'

  app 'QXmlEdit.app'
end
