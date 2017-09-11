cask 'festify' do
  version '0.2.8'
  sha256 'd465c7e2df2762a2e39e05f56086be36a6707834fac1420a95fe9201329d2856'

  url "https://github.com/festify/app/releases/download/v#{version}/Festify-#{version}.dmg"
  appcast 'https://github.com/Festify/app/releases.atom',
          checkpoint: 'b23017ef4a2fa2efd2ba9a4c738f2eb0ba801cb0505de8bbf65730f7ebb1a4a9'
  name 'Festify'
  homepage 'https://github.com/festify/app'

  app 'Festify.app'

  zap delete: '~/Library/Saved Application State/rocks.festify.app.savedState',
      trash:  [
                '~/Library/Application Support/Festify',
                '~/Library/Preferences/rocks.festify.app.helper.plist',
                '~/Library/Preferences/rocks.festify.app.plist',
              ]
end
