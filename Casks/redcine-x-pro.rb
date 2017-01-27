cask 'redcine-x-pro' do
  version '42.0.0,41605'
  sha256 'ad0fe98b60a1997ff4e524a40925708c178a0f1f0af97c14f9bf0590f19e662a'

  url "http://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.after_comma}/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
  name 'REDCINE-X PRO'
  homepage 'https://www.red.com/'

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.red.pkg.REDCINE-X PRO',
                       'com.red.pkg.SupportLibs',
                     ]
end
