cask 'redcine-x-pro' do
  version '52.0.49422'
  sha256 'f1ca8e5aad184ef73b5f085642b8a232d4dcbdff47ef73d2479e4a37a3864fc4'

  url "http://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.patch}/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
  appcast 'https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac'
  name 'REDCINE-X PRO'
  homepage 'https://www.red.com/'

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
                       'com.red.pkg.REDCINE-X PRO',
                       'com.red.pkg.SupportLibs',
                     ],
            delete:  '/Applications/REDCINE-X Professional'
end
