cask 'bathyscaphe' do
  version '310-v1084'
  sha256 '076418e017e78cb01037fa43eb2f68e1514a14538b82b9de5d70d2e1ad5b0d9a'

  # bitbucket.org/bathyscaphe/public/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  appcast 'https://bathyscaphe.bitbucket.io/appcast.xml'
  name 'BathyScaphe'
  homepage 'https://bathyscaphe.bitbucket.io/'

  depends_on macos: '>= :sierra'

  app 'BathyScaphe.app'
end
