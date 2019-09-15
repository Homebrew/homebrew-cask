cask 'gswitch' do
  version '1.9.5'
  sha256 'c946dda8cd536a4dea8e4e28f78a2a46d5a87d879bd13db0e8378d372013982f'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
