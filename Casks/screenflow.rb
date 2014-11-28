cask :v1 => 'screenflow' do
  version '5.0'
  sha256 'ee08bbf672d449e8c304b0b44d722a32d674d367725b7c6c8937254c50306f09'

  url "http://www.telestream.net/download-files/screenflow/5-0/ScreenFlow-#{version}.dmg"
  homepage 'http://www.telestream.net/screenflow/'
  license :unknown

  app 'ScreenFlow.app'
end
