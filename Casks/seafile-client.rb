cask :v1 => 'seafile-client' do
  version '3.1.5'
  sha256 '25eedd712d57bcf94fd19ba2783d5f0278c3e95403ee07f300e17dabbd6bb75a'

  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  homepage 'http://seafile.com/'
  license :oss

  app 'Seafile Client.app'
end
