class Soundnote < Cask
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'

  app 'SoundNote.app'
end
