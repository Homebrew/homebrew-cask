cask 'gitmoji' do
  version '1.0.1'
  sha256 '7961f9be82688c98cc62d0df70b59251d94848c9b6669a6a39d6ae4fc7ad10d1'

  url "https://github.com/NuroDev/gitmoji/releases/download/#{version}/Gitmoji-#{version}.dmg"
  appcast 'https://github.com/NuroDev/gitmoji/releases.atom',
          checkpoint: '30ef1a869bc8db533e3f53d83f2195c4a81775b9fb966810458ef38e335fad26'
  name 'gitmoji'
  homepage 'https://github.com/NuroDev/gitmoji'

  app 'gitmoji.app'

  zap trash: [
               '~/Library/Application Support/gitmoji',
               '~/Library/Preferences/com.Meadowcottage.Gitmoji.helper.plist',
               '~/Library/Preferences/com.Meadowcottage.Gitmoji.plist',
               '~/Library/Saved Application State/com.Meadowcottage.Gitmoji.savedState',
             ]

  caveats do
    discontinued
  end
end
