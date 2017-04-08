cask 'lyn' do
  version '1.8.7'
  sha256 '9cecb54dad68d53432fa15134577662b9c2e7498c93ff52bc406c83f647facd6'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '1334e552bbbce6ebb899cbe62cabef7d5fd798cbe18a71bb50d1bde3899b88f9'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
