cask :v1 => 'audio-hijack' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/audiohijack/download/AudioHijack.zip'
  name 'Audio Hijack'
  homepage 'http://www.rogueamoeba.com/audiohijack/'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'Audio Hijack.app'
end
