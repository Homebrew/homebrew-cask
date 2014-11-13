cask :v1 => 'screenflow' do
  version '4.5.3'
  sha256 '48209b7fd5387e07c63bd4502ad073dde96460ee30e1a8b19fe2977e8b274914'

  url "http://www.telestream.net/download-files/screenflow/4-5/ScreenFlow-#{version}.dmg"
  homepage 'http://www.telestream.net/screenflow/'
  license :unknown

  app 'ScreenFlow.app'
end
