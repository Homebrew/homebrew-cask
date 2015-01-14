cask :v1 => 'seafile-client' do
  version '4.0.4'
  sha256 'b3858be3dbb6df80e6bf66b8db2aa783301b5af2107f8ac67ce830814e366a17'

  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  homepage 'http://seafile.com/'
  license :oss

  app 'Seafile Client.app'
end
