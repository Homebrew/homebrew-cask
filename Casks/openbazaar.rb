cask 'openbazaar' do
  version '2.0.17'
  sha256 'c0d30f50becd387651c7bc52fff28ee4899ed8b448a67f7f4dca52a2e1afd98a'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '401882c4ce8092e268c874bcd973e2f2c98e3540e4bb3e636820bffecb46666c'
  name "OpenBazaar#{version.major}"
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.electron.openbazaar#{version.major}",
                "~/Library/Caches/com.electron.openbazaar#{version.major}.ShipIt",
                '~/Library/Caches/com.electron.openbazaar',
              ],
      trash:  [
                "~/Library/Application Support/OpenBazaar#{version.major_minor}",
                "~/Library/Preferences/com.electron.openbazaar#{version.major}.helper.plist",
                '~/Library/Preferences/com.electron.openbazaar.plist',
              ]
end
