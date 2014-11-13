cask :v1 => 'baretorrent' do
  version '0.4.4'
  sha256 'dea7c210e9b57b74fc44b498d8f5d238458ffffff3c66b2a91bd77f5cec5238d'

  url "https://launchpad.net/baretorrent/trunk/#{version}/+download/baretorrent-#{version}-osx-x64.dmg"
  homepage 'http://baretorrent.org'
  license :public_domain

  app 'baretorrent.app'
end
