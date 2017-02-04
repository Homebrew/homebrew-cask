cask 'speedcrunch' do
  version '0.12'
  sha256 '1c513acd0db375e079f47055f5903b538361fdd2ebf62d09bd3e876cb7513a94'

  # bitbucket.org/heldercorreia/speedcrunch was verified as official when first introduced to the cask
  url "https://bitbucket.org/heldercorreia/speedcrunch/downloads/SpeedCrunch-#{version}.dmg"
  name 'SpeedCrunch'
  homepage 'http://www.speedcrunch.org/'

  app 'SpeedCrunch.app'
end
