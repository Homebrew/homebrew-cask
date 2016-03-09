cask 'mac2imgur' do
  version '3.0'
  sha256 '49d731e9dc15378c2045d459ce910a13154cb37d8e0f2126ceed973557a02d92'

  # mileswd.com is the official download host per the vendor homepage
  url 'https://mileswd.com/mac2imgur/latest'
  appcast 'https://mileswd.com/mac2imgur/update',
          checkpoint: '44cb757471fd9b77cbf244f8b32220f46975a2047455c70b8a3a92f3f9462149'
  name 'mac2imgur'
  homepage 'https://github.com/mileswd/mac2imgur'
  license :gpl

  app 'mac2imgur.app'

  zap delete: [
                '~/Library/Caches/com.mileswd.mac2imgur',
                '~/Library/Preferences/com.mileswd.mac2imgur.plist',
              ]
end
