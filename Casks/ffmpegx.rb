cask 'ffmpegx' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp2.ffmpegx.com/ffmpegx/ffmpegX.dmg'
  name 'ffmpegX'
  homepage 'https://www.ffmpegx.com/download.html'

  app 'ffmpegX.app'
end
