cask 'gswitch' do
  version '1.8.2'
  sha256 'b0b0169139d188b539789b6f10d0018e14f47bc6fa6a28e37c64e7a2a0ffe7a7'

  # github.com/CodySchrank/gSwitch was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
