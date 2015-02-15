cask :v1 => 'macaw' do
  version '1.5.13'
  sha256 'f50ac27257a1d93a4f346c3ce47ecad73aee71b0168dc9cf586c8c73f3652cb6'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => '6db73e26f6d1d9a891762e9622e594c79fc0d2bb57ff14a98951e7d8ade37d92'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'
end
