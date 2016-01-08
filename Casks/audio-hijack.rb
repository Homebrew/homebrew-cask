cask 'audio-hijack' do
  version '3.2.1'
  sha256 'f64bff96b91e251689c2423087fae99485644a4a3df1e160ef36a0c214b41885'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          :sha256 => '46cfb51cfbd12f6256fbccd7cb4d91aaa37025f653feee5d16e27f9d58c67c44'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'Audio Hijack.app'
end
