cask :v1 => 'apptrap' do
  version '1.2.2'
  sha256 'e7d36e24121d732a06d5dbb7fed27e18e470231544e8e0aec309eb2afb9d75be'

  url "http://onnati.net/apptrap/AppTrap#{version.gsub('.','-')}.zip"
  appcast 'http://onnati.net/apptrap/ReleaseNotes.xml',
          :sha256 => 'd35f986d81c87b37e8ae5a7751eb316958c559f66abcb15ee6393cea85273f82'
  homepage 'http://onnati.net/apptrap'
  license :other # see https://github.com/kvijayan/AppTrap/blob/master/LICENSE

  prefpane 'AppTrap.prefPane'
end
