cask 'audio-hijack' do
  version '3.2.2'
  sha256 '13258602ddec5de906aa0289b9ead4c3500026248f15c9f51d2e089c2d31ae21'

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  appcast 'https://www.rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.audiohijack3',
          checkpoint: '88a5345bcaab07cedfd1e619e8ed99c19987d29ec433d928bd9b7a96b93da2be'
  name 'Audio Hijack'
  homepage 'https://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Audio Hijack.app'
end
