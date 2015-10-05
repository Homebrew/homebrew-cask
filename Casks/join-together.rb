cask :v1 => 'join-together' do
  version '7.5.0'
  sha256 'a6661c05b73fff78e1fcfc4e474e95f732ccc996a5bbae56f390e51a414e6867'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.delete('.')}.zip"
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => '4265e5826859579304b51216b5b675e853b25fda0b1293565a79ff8352a7e363'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
