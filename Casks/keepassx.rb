cask 'keepassx' do
  version '2.0'
  sha256 'e3b497e57beb3ef2878a78851ed680a0eba074f8aca475f3d90b8e7ad9d2e714'

  url "https://www.keepassx.org/releases/#{version}/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'http://www.keepassx.org'
  license :bsd

  app 'KeePassX.app'

  zap :delete => '~/.keepassx'
end
