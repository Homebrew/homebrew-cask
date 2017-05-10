cask 'frostwire' do
  version '6.5.0'
  sha256 'a460e11b4773b0caf2d4f35522225b2b1f10594eb4feec7f61814ca1f518ecad'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '04b05bfbd8ab9670591859d82ad201261606fa4ea0f377aaf57ad31ca0efa32c'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
