cask :v1 => 'soundnote' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/SoundNote'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
