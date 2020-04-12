cask 'flashprint' do
  version '4.2.0'
  sha256 '8abb4c69f32b669994b7695f981c27aad8f3da5cbf0d02272016f9483c793d33'

  url 'https://en.fss.flashforge.com/10000/software/bb8cad0ffed6160ae46a0dcbf032145c.zip'
  name 'FlashPrint'
  homepage 'https://www.flashforge.com/software/detail/Flashprint?id=40'

  auto_updates true

  pkg 'FlashPrint.pkg'

  uninstall pkgutil: 'com.sz3dp.pkg.FlashPrint'

  zap trash: [
               '~/Library/Preferences/FlashForge.FlashPrint.plist',
             ]
end
