cask 'mutify' do
  version :latest
  sha256 :no_check

  url 'https://storage.mutify.app/data/Mutify.dmg'
  name 'Mutify'
  homepage 'https://mutify.app/'

  app 'Mutify.app'

  zap trash: [
               '~/Library/Application Support/MutifyAgent',
               '~/Library/Cookies/com.pixel-point.MutifyAgent.binarycookies',
               '~/Library/Preferences/com.pixel-point.Mutify.plist',
               '~/Library/Preferences/com.pixel-point.MutifyAgent.plist',
             ]
end
