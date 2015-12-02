cask :v1 => 'join-together' do
  version '7.5.3'
  sha256 '2df29280c83580e16acaac20e5015acf1d24889de1439cc252f735658053af23'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.delete('.')}.zip"
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '8e0c1bffffc4da135dd9c906e377cd49ad718d222a7a8b2fd5d896de1c4e00ac'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
