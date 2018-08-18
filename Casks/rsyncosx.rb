cask 'rsyncosx' do
  version '5.4.1'
  sha256 'fd864012b51ab6a847857e24fa2afd6e8841979affc4e6715a9c9f6fe3aeb34d'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX-#{version}.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
