cask 'lepton' do
  version '1.7.3'
  sha256 '64488f239d325b50b7bb601832f286cdc7223edf31d0e8b667b2cd72fee733e1'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}.dmg"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom'
  name 'Lepton'
  homepage 'https://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
