cask :v1 => 'm3unify' do
  version '1.3.3'
  sha256 'f7c5fe21499e20bf282b48070a5084de908854be4fc21d2a41a1f9ae019cff72'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.gsub('.','')}.zip"
  name 'M3Unify'
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          :sha256 => '94c9b64476d24b198ba6d957155cda248b0ca7f609e726cf8d88a955b69b4c3e'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
