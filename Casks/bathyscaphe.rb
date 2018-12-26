cask 'bathyscaphe' do
  version '310-v1085'
  sha256 'b1cb3a273477a6d4003640fbbfa9e93c563b0d88f3adb8a5d26cdffe284173b6'

  # bitbucket.org/bathyscaphe/public/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  appcast 'https://bathyscaphe.bitbucket.io/appcast.xml'
  name 'BathyScaphe'
  homepage 'https://bathyscaphe.bitbucket.io/'

  depends_on macos: '>= :sierra'

  app 'BathyScaphe.app'
end
