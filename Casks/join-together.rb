cask 'join-together' do
  version '7.5.4'
  sha256 'deb307d0057df4a1376a15a31cc466946fe462f27ea35a188969d3a2102b7622'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :checkpoint => '10661472af4b4b1fdd644a596bee77cb666df27769dbb58138f2aae032bb6db5'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
