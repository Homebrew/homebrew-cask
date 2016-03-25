cask 'keepassx' do
  version '2.0.2'
  sha256 '4e3ad9ba5cb451aa5d7a415ae27ed19a6e193b36674ee4b70fc540de2a152ab1'

  url "https://www.keepassx.org/releases/#{version}/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'https://www.keepassx.org'
  license :bsd

  app 'KeePassX.app'

  zap delete: '~/.keepassx'
end
