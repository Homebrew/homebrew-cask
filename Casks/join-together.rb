cask 'join-together' do
  version '7.5.4'
  sha256 'deb307d0057df4a1376a15a31cc466946fe462f27ea35a188969d3a2102b7622'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '92193058495ef375d16fae918ddb413070c3f433a9efcf9038a4e1790be11ede'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
