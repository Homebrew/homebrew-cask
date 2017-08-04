cask 'subler' do
  version '1.3.4'
  sha256 'd2e3c615d8f8a6fa5a49b7917524bf6b4489b0af5a133de8f6fe9c66a799d4f1'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'c12b341c814209f7bf0e6b00fe1ef25c0c9a14c23289687592172b3dbb2a44b6'
  name 'Subler'
  homepage 'https://subler.org/'

  auto_updates true

  app 'Subler.app'

  zap delete: [
                '~/Library/Preferences/org.galad.Subler.plist',
                '~/Library/Application Support/Subler',
                '~/Library/Caches/org.galad.Subler',
                '~/Library/Saved Application State/org.galad.Subler.savedState',
              ]
end
