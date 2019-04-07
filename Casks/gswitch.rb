cask 'gswitch' do
  version '1.8.1'
  sha256 'ff2db9c793d72956e118f0ccf071f8e54220f61eba3fcc6a9be40266eba8970c'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  app 'gSwitch.app'
end
