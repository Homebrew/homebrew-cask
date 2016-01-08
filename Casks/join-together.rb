cask 'join-together' do
  version '7.5.4'
  sha256 'deb307d0057df4a1376a15a31cc466946fe462f27ea35a188969d3a2102b7622'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '8c9ac13d0dcf1559b4881f19000a144d60b16511944b1090fe7df5203e49cc3e'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
