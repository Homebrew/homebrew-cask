cask 'hx-edit' do
  version '2.82'
  sha256 'e8ef13d04bffcdb9a367fa24781d21ba81546c5528149277b9e552118bfdfff6'

  # l6c-acdn2.line6.net was verified as official when first introduced to the cask
  url "https://l6c-acdn2.line6.net/media/software/9314/HXEdit#{version}.dmg"
  name 'HX Edit'
  homepage 'https://line6.com/software'

  pkg 'HX Edit.pkg'

  uninstall pkgutil: [
                       'com.line6.application.hxedit.package',
                       'com.line6.application.line6updater.package',
                     ]
end
