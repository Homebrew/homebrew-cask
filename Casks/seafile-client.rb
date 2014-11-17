cask :v1 => 'seafile-client' do
  version '3.1.11'
  sha256 'abe35aae05b1716c51bedcf60963b9bc90fff7bfe27e5a60eb75d5afc9838c52'

  url "https://bitbucket.org/haiwen/seafile/downloads/seafile-client-#{version}.dmg"
  homepage 'http://seafile.com/'
  license :oss

  app 'Seafile Client.app'
end
