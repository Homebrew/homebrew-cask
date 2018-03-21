cask 'joplin' do
  version '1.0.78'
  sha256 '0150123b574f9311e03b761ecbeee2d461820703d43ac31634e27a1deda7f05a'

  # github.com/laurent22/joplin was verified as official when first introduced to the cask
  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg"
  appcast 'https://github.com/laurent22/joplin/releases.atom',
          checkpoint: 'd0f93b5d0242967d623f2eb8bd3ed6c3c3470106f044e880b57e54d36df7b5be'
  name 'Joplin'
  homepage 'http://joplin.cozic.net/'

  app 'Joplin.app'

  zap trash: [
               '~/Library/Application Support/Joplin',
               '~/Library/Preferences/net.cozic.joplin-desktop.helper.plist',
               '~/Library/Preferences/net.cozic.joplin-desktop.plist',
               '~/Library/Saved Application State/net.cozic.joplin-desktop.savedState',
             ]
end
