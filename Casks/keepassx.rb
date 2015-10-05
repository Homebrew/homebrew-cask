cask :v1 => 'keepassx' do
  version '2.0-beta2'
  sha256 'ae4a40796b12496440aa6781534930f0f80ec175cd6ff03daf3481ad6e013f50'

  url "https://www.keepassx.org/dev/attachments/download/117/KeePassX-#{version}.dmg"
  name 'KeePassX'
  homepage 'http://www.keepassx.org'
  license :bsd

  app 'KeePassX.app'

  zap :delete => '~/.keepassx'
end
