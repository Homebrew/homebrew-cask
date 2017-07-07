cask 'muzzle' do
  version '1.2'
  sha256 'e6a253075b3eaa8862d8ef9dfac3a4de6021d3a0de587657fe447df0b3193f2e'

  url 'https://muzzleapp.com/binaries/muzzle.zip'
  appcast 'https://muzzleapp.com/api/1/appcast.xml',
          checkpoint: '03532f6316d7a485b38aee764000f40e64f7185e7e205d3a80d552b850158556'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  app 'Muzzle.app'
end
