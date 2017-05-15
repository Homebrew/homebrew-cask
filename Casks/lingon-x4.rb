cask 'lingon-x4' do
  version '4.3.8'
  sha256 'de77b6e6b8fa8b8a859bf66400fbc8c2a2591270808841ef1cd786a69e7e4411'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '865ac353ac51ef4c3a03f6d368e46a286c9a51e951c15f7f9d53cfd613868583'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :el_capitan'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX4Agent',
                '~/Library/Caches/com.peterborgapps.LingonX4',
                '~/Library/Containers/com.peterborgapps.LingonX4Agent',
                '~/Library/Preferences/com.peterborgapps.LingonX4.plist',
              ]
end
