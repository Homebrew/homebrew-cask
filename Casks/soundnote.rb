cask 'soundnote' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/SoundNote',
          :sha256 => 'e96e5ebe7d312f8483068101f7af6468b2a968f6cc066653ed2ddc887fe2d057'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
