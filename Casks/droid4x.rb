cask 'droid4x' do
  version :latest
  sha256 :no_check

  # haima.me/download/DXDown was verified as official when first introduced to the cask
  url 'http://dl.haima.me/download/DXDown/mac/Z001/Droid4XInstaller.zip'
  name 'Droid4X'
  homepage 'http://www.droid4x.com/'

  installer manual: 'Droid4XInstaller.app'

  uninstall pkgutil: [
                       'com.haiyu.Droid4X.droid4x.Droid4X.pkg',
                       'com.haiyu.Droid4X.droid4x.vbox.pkg',
                     ],
            delete:  '/Application/Droid4X.app'

  zap delete: [
                '~/Documents/DXInst',
                '~/Library/Application Support/Droid4X',
                '~/Library/Caches/Haiyu.DXInst',
              ]
end
