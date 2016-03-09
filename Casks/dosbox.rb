cask 'dosbox' do
  version '0.74'
  sha256 '99057370b478608a6f0167ef522ef59e0e1b876f8565622d3dbd707925d61f6c'

  # sourceforge.net/project/dosbox was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/dosbox/dosbox/#{version}/DOSBox-#{version}-1_Universal.dmg"
  name 'DOSBox'
  homepage 'http://www.dosbox.com'
  license :gpl

  app 'DOSBox.app'
end
