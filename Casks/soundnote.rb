cask 'soundnote' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/SoundNote',
          :checkpoint => '731d0fc05ef63d6839ea453d406c7105669ef1e37e8991a3a66444ea770d09a8'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
