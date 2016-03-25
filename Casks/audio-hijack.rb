cask 'audio-hijack' do
  version '3.2.3'
  sha256 'f4fe5c5bd8cadc03ba940dd52a43e65b99e48eadfae115c81b23b96c9ef183c5'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          checkpoint: '0fbaba7942a36504e2e27180648f83864ce020532a49f76673d3ca6a1dbd2a01'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Audio Hijack.app'
end
