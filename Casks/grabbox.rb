cask 'grabbox' do
  version '2.0.1'
  sha256 'd8b7c1b9bade16e4a7f9118ee493ecbc07f9db828a219805ab4ed3f693456cd3'

  url "https://grabbox.bitspatter.com/updates/GrabBox-#{version}.zip"
  appcast 'https://grabbox.bitspatter.com/updates/appcast.xml',
          checkpoint: '11d5a62709fcbebf40ebbeb305fec4f9f6f7fe634b09e7ead64adfaebe017835'
  name 'GrabBox'
  homepage 'https://grabbox.bitspatter.com/'

  app 'GrabBox.app'
end
