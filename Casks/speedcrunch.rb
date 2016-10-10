cask 'speedcrunch' do
  version '0.11'
  sha256 '1ce5ef9d167614a2e63daad43a23bd8df60b8ea641df6be9aabdf826bbb5a826'

  # bitbucket.org/heldercorreia/speedcrunch was verified as official when first introduced to the cask
  url "https://bitbucket.org/heldercorreia/speedcrunch/downloads/SpeedCrunch-#{version}.dmg"
  name 'SpeedCrunch'
  homepage 'http://www.speedcrunch.org/'

  app 'SpeedCrunch.app'
end
