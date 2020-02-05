cask 'double-commander' do
  version '0.9.8-9296'
  sha256 '4f80b2eb299c54bf83ff389c60f60d4381530f8631874897ec6e294ac2b83e84'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  app 'Double Commander.app'
end
