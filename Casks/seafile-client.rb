cask :v1 => 'seafile-client' do
  version '4.0.6.1'
  sha256 'ec1ed542d3640a702774abb3afb47a49abb146bab506d410299abd92e725c1a9'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  homepage 'http://seafile.com/'
  license :oss

  app 'Seafile Client.app'
end
