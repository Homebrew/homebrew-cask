cask 'lepton' do
  version '1.2.2'
  sha256 'f829674b3c4bc37b429c50cb4a1ebd3a44e2aa4a198c10fb68344a24c496a263'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '77ddd48b815605224488b1015e11da14d82a3481cf4c14018f9b008aa0c2324a'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
