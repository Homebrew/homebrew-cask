cask 'lingon-x' do
  version '5.2.2'
  sha256 'd301daeed3f66fc5f1a8534778a008d97575fdfe5bf8577f396adc64039a9d5a'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'fd7c0d26c1af08efa432a9d653b73453c54dc57571b0c98a78e75195163f646f'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
