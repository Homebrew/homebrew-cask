cask 'sloth' do
  version '2.4'
  sha256 '394c89fa64942307d496b69709836ffe6438afc589e7dbb3e3ae766cee1c5b2f'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: 'c34e88aef0a84efd1b93baad487b1b884ae2f9f6028ea5cd6bd9f3b3539b575e'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
