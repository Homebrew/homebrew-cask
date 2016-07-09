cask 'firefox' do
  version '47.0.1'
  sha256 '37f4b7b6a1fec3eb5225a0d1aed3c3d6979b5cf01748479313f6e384929cdc75'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/en-US/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'c03d2c0ce638c499da24232ddcdbce6b908fd718953440797924bd12b87552cf'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'
  license :mpl

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
