cask :v1 => 'keepassx' do
  version '2.0-beta1'
  sha256 '841c5a3ef3c49233457cb1a00f97ebcf18d5ec8454b351a62ab3890eafcfaa5d'

  url "https://www.keepassx.org/dev/attachments/download/103/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'http://www.keepassx.org'
  license :bsd

  app 'KeePassX.app'

  zap :delete => '~/.keepassx'
end
