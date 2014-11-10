class RedcineXPro < Cask
  version '31.0.0'
  sha256 '9393f84d839214ef4b692434ced8f4f9ecd12f8f49d8230d84c1bef9fe44d4db'

  url 'http://s3.amazonaws.com/red_3/downloads/software/rcx/REDCINE-X_PRO_Build_31_OSX.zip'
  homepage 'https://www.red.com/'
  license :commercial

  pkg 'REDCINE-X_PRO_Build_31.pkg'
  uninstall :pkgutil => 'com.red.pkg.REDCINE-X PRO'
  uninstall :pkgutil => 'com.red.pkg.SupportLibs'
end
