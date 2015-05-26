cask :v1 => 'soundnote' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/SoundNote'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
