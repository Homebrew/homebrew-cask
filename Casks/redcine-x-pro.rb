cask 'redcine-x-pro' do
  version '50.5'
  sha256 '443b4e92e8b4c23dad9478f96e8d88159944d904e61d07ad41e402377cc8aafe'

  # s3.amazonaws.com/red-4/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/red-4/downloads/software/rcx/REDCINE-X_PRO_Build_#{version}.pkg"
  name 'REDCINE-X PRO'
  homepage 'https://www.red.com/'

  pkg "REDCINE-X_PRO_Build_#{version}.pkg"

  uninstall pkgutil: [
                       'com.red.pkg.REDCINE-X PRO',
                       'com.red.pkg.SupportLibs',
                     ],
            delete:  '/Applications/REDCINE-X Professional'
end
