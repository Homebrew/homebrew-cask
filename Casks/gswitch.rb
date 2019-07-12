cask 'gswitch' do
  version '1.9.4'
  sha256 'b5fe9bb912adc4624309f6922ae9efb28aa161b30f874da0abbe09d336212694'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
