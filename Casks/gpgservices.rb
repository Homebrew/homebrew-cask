class Gpgservices < Cask
  url 'https://s3.amazonaws.com/gpgtools/GPGServices-1.8.dmg'
  homepage 'https://gpgtools.org/gpgservices/index.html'
  version '1.8'
  sha1 '5836bf9585b89db2f65f08673a7110453f32e5d0'
  install 'GPGServices.pkg'
  uninstall 'Uninstall.app'
end
