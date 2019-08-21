cask 'superposition' do
  version '1.1.0'
  sha256 '8560b03dd1a323eb1cca21b26e3ee5b71ce923f2a7ce5d958e079eac799e8c67'

  # github.com/firstversionist/superposition was verified as official when first introduced to the cask
  url "https://github.com/firstversionist/superposition/releases/download/v#{version}/Superposition-#{version}.dmg"
  appcast 'https://github.com/firstversionist/superposition/releases.atom'
  name 'Superposition'
  homepage 'https://superposition.design/'

  app 'Superposition.app'

  zap trash: [
               '~/Library/Application Support/Superposition',
               '~/Library/Application Support/Superposition/superposition-state',
               '~/Library/Saved Application State/com.firstversionist.superposition.savedState',
               '~/Library/Preferences/com.firstversionist.superposition.plist',
               '~/Library/Logs/Superposition',
             ]
end
