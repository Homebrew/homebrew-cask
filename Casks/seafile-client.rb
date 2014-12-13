cask :v1 => 'seafile-client' do
  version '4.0.3'
  sha256 'ffaf8dcf76ebf6ca34c44d9a8cc61c229d179c31fe6a684534e350b53e207f15'

  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  homepage 'http://seafile.com/'
  license :oss

  app 'Seafile Client.app'
end
