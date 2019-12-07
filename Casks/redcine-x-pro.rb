cask 'redcine-x-pro' do
  version '51.0.47074'
  sha256 '4f8021224cd4e705ca18f2709540731046e991efb23e7232e157ad59b89604c1'

  # red_3.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://red_3.s3.amazonaws.com/downloads/software/rcx/RELEASE%20CANDIDATE/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
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
