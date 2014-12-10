cask :v1 => 'ffmpegx' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp2.ffmpegx.com/ffmpegx/ffmpegX.dmg'
  homepage 'http://www.ffmpegx.com/download.html'
  license :unknown    # todo: improve this machine-generated value

  app 'ffmpegX.app'
end
