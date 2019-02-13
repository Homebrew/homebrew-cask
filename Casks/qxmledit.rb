cask 'qxmledit' do
  version '0.9.12'
  sha256 'fd61bcb8f2b5569bcde54aa528cc39da93e53b49b9bd2f127de6f5ab4ec44c6f'

  # downloads.sourceforge.net/qxmledit was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qxmledit/rss'
  name 'QXmlEdit'
  homepage 'https://qxmledit.org/'

  app 'QXmlEdit.app'
end
