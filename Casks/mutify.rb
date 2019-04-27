cask 'mutify' do
  version '1.1.1'
  sha256 '1ac19cef9d59cd1162ddfbd97c7bbe882159c763458b0fc5ce19690f433b673c'

  url 'https://storage.mutify.app/data/Mutify.dmg'
  appcast 'https://storage.mutify.app/data/appcast.xml'
  name 'Mutify'
  homepage 'https://mutify.app/'

  auto_updates true

  app 'Mutify.app'

  zap trash: [
               '~/Library/Application Support/MutifyAgent',
               '~/Library/Cookies/com.pixel-point.MutifyAgent.binarycookies',
               '~/Library/Preferences/com.pixel-point.Mutify.plist',
               '~/Library/Preferences/com.pixel-point.MutifyAgent.plist',
             ]
end
