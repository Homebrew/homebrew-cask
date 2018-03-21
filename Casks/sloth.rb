cask 'sloth' do
  version '2.2'
  sha256 '147bf44eb1dca7e522d781cd22405a7724e9fdaedd142193a9bf83ce7c2c17a7'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml',
          checkpoint: 'ce194ccf0cb33ddbe89e41555b3e164dd50353597580a8bb9fcb2d235a5ce2cc'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
