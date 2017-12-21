cask 'redcine-x-pro' do
  version '50.0.0,43840'
  sha256 'c617328a331cf2c1dc10fd71e9a0827516b2de6c6cd71404f913d621a77564f1'

  url "http://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.after_comma}/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
  name 'REDCINE-X PRO'
  homepage 'http://www.red.com/'

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.red.pkg.REDCINE-X PRO',
                       'com.red.pkg.SupportLibs',
                     ],
            delete:  '/Applications/REDCINE-X Professional'
end
