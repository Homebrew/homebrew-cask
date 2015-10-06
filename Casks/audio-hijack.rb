cask :v1 => 'audio-hijack' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  name 'Audio Hijack'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          :sha256 => '8a099faa83340515647004e0ff56b5a09509baae5384e93be17754dabbff8e05'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  app 'Audio Hijack.app'

  depends_on :macos => '>= :mavericks'
end
