cask 'muzzle' do
  version '1.2'
  sha256 'e6a253075b3eaa8862d8ef9dfac3a4de6021d3a0de587657fe447df0b3193f2e'

  url 'https://muzzleapp.com/binaries/muzzle.zip'
  appcast 'https://muzzleapp.com/api/1/appcast.xml',
          checkpoint: '5d0b59d99cd2bc53ee8ab8993af13d98ac70fd50860abb8a4ff85453bffaa057'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  depends_on macos: '>= 10.11'

  app 'Muzzle.app'
end
