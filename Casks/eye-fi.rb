class EyeFi < Cask
  url 'http://d2mje64xs0b9gu.cloudfront.net/3.4.35/Eye-Fi.dmg'
  homepage 'http://support.eye.fi/downloads'
  version '3.4.35'
  sha1 '21841d2679ca7f92193687417d2f68819c026a64'
  install 'Eye-Fi.mpkg'
  # uninstall :pkgutil => 'fi.eye.*'
end
