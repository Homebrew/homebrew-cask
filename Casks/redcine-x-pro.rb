cask 'redcine-x-pro' do
  version '39.40030'
  sha256 '177c87dd1ccc5579b446020a5b5400a71f2713981afbc13f0fc202bf4270af99'

  url "http://downloads.red.com/software/rcx/mac/release/#{version}/REDCINE-X_PRO_Build_#{version.major}.0.pkg"
  name 'REDCINE-X PRO'
  homepage 'https://www.red.com/'

  pkg "REDCINE-X_PRO_Build_#{version.major}.0.pkg"

  uninstall pkgutil: [
                       'com.red.pkg.REDCINE-X PRO',
                       'com.red.pkg.SupportLibs',
                     ]
end
