cask 'gswitch' do
  version '1.9.0'
  sha256 'd8050a6d49808a8b9fec263188379ab70f10c390f94b9306948ac6e825f086b2'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
