cask 'frostwire' do
  version '6.6.4'
  sha256 'afcbb87b0f9aae14a95e0ce020bf60f8dd4c5ac8d3a73690350717629b4ddb9e'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: 'e4bcd06a3a615aa792595bd76ce1f50813f4389316df20cbf84687518b0a670f'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
