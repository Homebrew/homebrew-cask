cask 'frostwire' do
  version '6.5.2'
  sha256 '82d8885ca2078fd29d92b7495b24ed238d053ececd2ad185a48a0e6e28dfe857'

  # downloads.sourceforge.net/frostwire was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/frostwire/frostwire-#{version.before_comma}.dmg"
  appcast "https://sourceforge.net/projects/frostwire/rss?path=/FrostWire%20#{version.major}.x",
          checkpoint: '988a3087332ce38111e2bcd5a0af742d055a68f016d5d644e21e96bdbc5313e9'
  name 'FrostWire'
  homepage 'http://www.frostwire.com/'

  app 'FrostWire.app'
end
