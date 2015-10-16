cask :v1 => 'join-together' do
  version '7.5.1'
  sha256 '116365cb1dae0b3c3a00a90f357e1d154767e6d866e5e18cd32ab3d3f7698d30'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.delete('.')}.zip"
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '1522384c632e3336f4f3ffe3245135f9f7a7718619e564064139c45ad285ee5b'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
