cask 'padlock' do
  version '2.7.2'
  sha256 'cb25ba911a07476d4914a9f9c20b252cbd141ddeff2bf0c677ead33cdb2a84d8'

  # github.com/padlock/padlock was verified as official when first introduced to the cask
  url "https://github.com/padlock/padlock/releases/download/v#{version}/Padlock-#{version}.dmg"
  appcast 'https://github.com/padlock/padlock/releases.atom'
  name 'Padlock'
  homepage 'https://padlock.io/'

  app 'Padlock.app'
end
