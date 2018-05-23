cask 'fluor' do
  version '2.0.2'
  sha256 'a1a90ca6b1cb4194f08ba29181331fdfd2786e99ae6d684fcb9e1a0034915753'

  # pyrolyse.it was verified as official when first introduced to the cask
  url "https://resources.pyrolyse.it/distrib/Fluor/Fluor%20#{version}.dmg"
  appcast 'https://updates.pyrolyse.it/Fluor/2.0/appcast.xml',
          checkpoint: 'cccc963ccce69e956a1a135bb816a6a9f81ecf97a6bc9b5172d6533fdcb75476'
  name 'Fluor'
  homepage 'https://fluorapp.net/'

  app 'Fluor.app'
end
