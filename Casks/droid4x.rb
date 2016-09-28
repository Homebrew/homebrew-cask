cask 'droid4x' do
  version '0.8.3'
  sha256 'dc1adca9cbb731cba0a213922044d2272d8562b3f1317f2919d5cf249d4a0162'

  # haima.me/download/DXDown was verified as official when first introduced to the cask
  url 'http://dl.haima.me/download/DXDown/mac/Z001/Droid4XInstaller.zip'
  name 'Droid4X'
  homepage 'http://www.droid4x.com/'
  license :closed

  installer manual: 'Droid4XInstaller.app'

  uninstall pkgutil: [
                       'com.haiyu.Droid4X.droid4x.Droid4X.pkg',
                       'com.haiyu.Droid4X.droid4x.vbox.pkg',
                     ]

  zap	delete: [
                '~/Documents/DXInst',
                '~/Library/Application Support/Droid4X',
                '~/Library/Caches/Haiyu.DXInst',
              ]
end
