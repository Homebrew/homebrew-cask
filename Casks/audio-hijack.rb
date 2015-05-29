cask :v1 => 'audio-hijack' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  name 'Audio Hijack'
  appcast 'http://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          :sha256 => '50ff37091962a7b91773d2ef82c012d9a136775a4f40482f2bc8b42e27186f5b'
  homepage 'http://www.rogueamoeba.com/audiohijack/'
  license :commercial

  app 'Audio Hijack.app'

  depends_on :macos => '>= :mavericks'
end
