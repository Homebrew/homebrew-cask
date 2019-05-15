cask 'gswitch' do
  version '1.9.3'
  sha256 '35225c8b570a202048f5bee43436baf1743c9299977826e4d5f6c91babf2f9ea'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
