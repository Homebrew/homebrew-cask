class EyeFi < Cask
  version '3.4.35'
  sha256 '7de117d0ee443683ad5ca7b3ab4ef5fc9e96c1a3d226cf87358c46b1270fca4e'

  url 'https://d2mje64xs0b9gu.cloudfront.net/3.4.35/Eye-Fi.dmg'
  homepage 'http://support.eye.fi/downloads'

  install 'Eye-Fi.mpkg'
  uninstall :pkgutil => 'fi.eye.*'
end
