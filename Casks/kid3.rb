cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.6.1'
  sha256 '07844015af79674461e9cf46eef5991aac02cbeecd9dee9b88c33200b4a508e2'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '9f70ca398a4588a6175ef15aa998627b2bd3b61931cd72c44345495d2aaa2b81'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
