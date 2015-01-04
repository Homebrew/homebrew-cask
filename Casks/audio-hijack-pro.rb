cask :v1 => 'audio-hijack-pro' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/audiohijackpro/download/AudioHijackPro.zip'
  name 'Audio Hijack Pro'
  homepage 'http://www.rogueamoeba.com/audiohijackpro/'
  license :commercial

  app 'Audio Hijack Pro.app'
end
