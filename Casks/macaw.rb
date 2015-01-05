cask :v1 => 'macaw' do
  version '1.5.10'
  sha256 'e9a038afe2ad28e9110afd1aedd442f2e3cbf3daf0edcba6d08841fdbc9bfd4b'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => '6db73e26f6d1d9a891762e9622e594c79fc0d2bb57ff14a98951e7d8ade37d92'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
