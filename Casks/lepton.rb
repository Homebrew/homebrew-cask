cask 'lepton' do
  version '1.2.0'
  sha256 '93609204d33dcb284693886ef406cebf3ddd6fdb2c7dbd9320d38e4e59b98902'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '8452f00ddc67c72cf97a555020f93b9e8bbe4ae73701b6b6cfa5dc93e533b2ac'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
