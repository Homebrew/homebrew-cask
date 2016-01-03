cask 'audio-hijack' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          :sha256 => '50ff37091962a7b91773d2ef82c012d9a136775a4f40482f2bc8b42e27186f5b'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'Audio Hijack.app'
end
