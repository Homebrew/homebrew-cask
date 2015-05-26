cask :v1 => 'seafile-client' do
  version '4.1.3'
  sha256 '936da2e40ae38cf0594af4040a2395f712b14d6aefc39e1d13d2f3f587a922c4'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  name 'Seafile Client'
  homepage 'http://seafile.com/'
  license :gpl

  app 'Seafile Client.app'
end
