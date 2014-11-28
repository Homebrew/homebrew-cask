cask :v1 => 'speedcrunch' do
  version '0.11'
  sha256 '1ce5ef9d167614a2e63daad43a23bd8df60b8ea641df6be9aabdf826bbb5a826'

  url "https://bitbucket.org/heldercorreia/speedcrunch/downloads/SpeedCrunch-#{version}.dmg"
  homepage 'http://www.speedcrunch.org'
  license :oss

  app 'SpeedCrunch.app'
end
