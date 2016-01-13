cask 'soundnote' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/SoundNote',
          :checkpoint => '5c715b3362c86a59e130f668ab1b3e07a9c71ad753530cd2ff6f249320e78e6b'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
