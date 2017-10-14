cask 'lingon-x' do
  version '5.2.1'
  sha256 '219178913979498b577ce7d6f0f5b32cd00ba762d6683be9289ba975c137aa4e'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'edf2bdbbb1752fe45976d84ebd1cb0c5f9449adc093f04b22de538e8a432eeed'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
