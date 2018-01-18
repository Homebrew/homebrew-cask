cask 'fldigi' do
  version '4.0.14'
  sha256 'c893bb8c28e8d3064b890e5d59f2e6dc48305ee67c99d314973d3437c04012f1'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'a7a4c03a665efa3abfb1bcd3afe57ec9f86e4f5e34a602317bfdac8061627bd5'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
