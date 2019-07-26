cask 'mutify' do
  version '1.1.2'
  sha256 '120b414482d53ee30949e72e5b2e508a30882cb915ece095ed16fa3e00d42087'

  url 'https://storage.mutify.app/data/Mutify.dmg'
  appcast 'https://storage.mutify.app/data/appcast.xml'
  name 'Mutify'
  homepage 'https://mutify.app/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mutify.app'

  zap trash: [
               '~/Library/Application Support/MutifyAgent',
               '~/Library/Cookies/com.pixel-point.MutifyAgent.binarycookies',
               '~/Library/Preferences/com.pixel-point.Mutify.plist',
               '~/Library/Preferences/com.pixel-point.MutifyAgent.plist',
             ]
end
