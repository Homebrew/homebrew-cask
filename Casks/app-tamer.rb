cask 'app-tamer' do
  version '2.3'
  sha256 '2be0baaf3d5b815e533fd8dd6da33c7174132b685ab74a819d8306e3c425a751'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: 'd401efed1139b8a0916027bc711a647efcf474407cc9f9f41ce682a1a736a39b'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'
end
