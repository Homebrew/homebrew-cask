cask 'smc' do
  version '1.9'
  sha256 'b3317346483140b5969a8137f13ecf1162200e631179e5facb5dc65a5140a9fa'

  url "https://downloads.sourceforge.net/smclone/SMC-#{version}-osx10.5-x86.dmg"
  appcast 'https://sourceforge.net/projects/smclone/rss',
          checkpoint: '0bcd8260898d8dfad5edd46124e2e2c324f9b307c7962d05c4f8449510e96ff8'
  name 'Secret Maryo Chronicles'
  homepage 'http://www.secretmaryo.org/'

  app 'SMC.app'
end
