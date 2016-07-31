cask 'dosbox' do
  version '0.74'
  sha256 '99057370b478608a6f0167ef522ef59e0e1b876f8565622d3dbd707925d61f6c'

  # sourceforge.net/dosbox was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version}/DOSBox-#{version}-1_Universal.dmg"
  appcast 'https://sourceforge.net/projects/dosbox/rss',
          checkpoint: 'a14402b380285489ccca7bc6b540fb7db44bad3080bbed957e22964cbae55f76'
  name 'DOSBox'
  homepage 'http://www.dosbox.com'
  license :gpl

  app 'DOSBox.app'
end
