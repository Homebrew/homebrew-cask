cask :v1 => 'ffmpegx' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp2.ffmpegx.com/ffmpegx/ffmpegX.dmg'
  homepage 'http://www.ffmpegx.com/download.html'
  license :unknown

  app 'ffmpegX.app'
end
