cask :v1 => 'join-together' do
  version '7.5.2'
  sha256 '113eafed2832f3053c80419e832d1ad8d9e5da2806b09c8ec4cbce55c4843b8f'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.delete('.')}.zip"
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '8e0c1bffffc4da135dd9c906e377cd49ad718d222a7a8b2fd5d896de1c4e00ac'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
