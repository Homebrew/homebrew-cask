cask 'abstract' do
  version '76.0.0'
  sha256 '308800d1048ba647993664a2b62fa2484fbe4103ef6703cd938b8c54da238b34'

  url "https://downloads.goabstract.com/Abstract-#{version}.dmg"
  name 'Abstract'
  homepage 'https://www.goabstract.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Abstract.app'

  zap trash: [
               '~/Library/Application Support/Abstract',
               '~/Library/Caches/com.elasticprojects.abstract-desktop',
               '~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.plist',
               '~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState',
             ]
end
