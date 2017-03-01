cask 'frostwire' do
  version '6.4.5'
  sha256 '7e0ff839625f149abf84f4cb786253db7a93e2138f6d56ef7f944226be5caf27'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'bcd3340250a2d96f570b18c65f6af56c4d4ff6094c2873fcd1cba12c534e58bf'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
