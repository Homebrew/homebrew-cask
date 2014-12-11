cask :v1 => 'keepassx' do
  version '2.0-alpha6'
  sha256 '55aeaba8257d728b62ba173ba56df27897552737a556dc1e4e4ed6dcd3d6dd8a'

  url "https://www.keepassx.org/dev/attachments/download/72/KeePassX-#{version}.dmg"
  homepage 'http://www.keepassx.org'
  license :unknown    # todo: improve this machine-generated value

  app 'KeePassX.app'

  zap :delete => '~/.keepassx'
end
