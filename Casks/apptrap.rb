cask :v1 => 'apptrap' do
  version '1.2.2'
  sha256 'e7d36e24121d732a06d5dbb7fed27e18e470231544e8e0aec309eb2afb9d75be'

  url "http://onnati.net/apptrap/AppTrap#{version.gsub('.','-')}.zip"
  name 'AppTrap'
  appcast 'http://onnati.net/apptrap/ReleaseNotes.xml',
          :sha256 => '4ab7ba3ab89cf4d010cee8abd2d674a9141073369c921e69cde4ad33ab72919e'
  homepage 'http://onnati.net/apptrap'
  license :other # see https://github.com/kvijayan/AppTrap/blob/master/LICENSE

  prefpane 'AppTrap.prefPane'
end
