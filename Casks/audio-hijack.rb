cask 'audio-hijack' do
  version '3.3.1'
  sha256 'a72a896b3d701b3e742a6a57b5a2bd2b8a968de5702f5113c86ac492cae41bca'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          checkpoint: 'fb8b135e31ed074fb56a600c8304ace616c4456fbe4fe3bd862133e94edf8334'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Audio Hijack.app'
end
