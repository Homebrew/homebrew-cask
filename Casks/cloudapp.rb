cask :v1 => 'cloudapp' do
  version '3.2.0'
  sha256 '1e1868f61790c07e83480fe2d6b5e54efd1bb5a5'

  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'http://mameosx.sourceforge.net/'
  license :proprietary

  app 'CloudApp.app'
end
