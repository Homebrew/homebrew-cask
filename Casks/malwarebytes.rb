cask 'malwarebytes' do
  version '3.0.3.433'
  sha256 'ab592edc1aec714d009455fe7b53a759dd2f0cc21e3b74697a028979ef5d50f7'

  # data-cdn.mbamupdates.com/web was verified as official when first introduced to the cask
  url "https://data-cdn.mbamupdates.com/web/mb#{version.major}_mac/Malwarebytes-#{version}.dmg"
  name 'Malwarebytes for Mac'
  homepage 'https://www.malwarebytes.com/mac/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  pkg "Install Malwarebytes #{version.major}.pkg"

  uninstall delete:    '/Library/Application Support/Malwarebytes/MBAM',
            kext:      'com.malwarebytes.mbam.rtprotection',
            launchctl: [
                         'com.malwarebytes.mbam.frontend.agent',
                         'com.malwarebytes.mbam.rtprotection.daemon',
                         'com.malwarebytes.mbam.settings.daemon',
                       ],
            pkgutil:   'com.malwarebytes.mbam',
            quit:      'com.malwarebytes.mbam.frontend.agent',
            rmdir:     '/Library/Application Support/Malwarebytes'
end
