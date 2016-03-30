cask 'ffmpegx' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp2.ffmpegx.com/ffmpegx/ffmpegX.dmg'
  name 'ffmpegX'
  homepage 'http://www.ffmpegx.com/download.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ffmpegX.app'
end
