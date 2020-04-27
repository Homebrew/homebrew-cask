cask 'gswitch' do
  version '1.9.6'
  sha256 '431660ba4f7971f00d5d4648a96b4ac2326dbde366486f6fbbb4727f3d575e48'

  # github.com/CodySchrank/gSwitch/ was verified as official when first introduced to the cask
  url "https://github.com/CodySchrank/gSwitch/releases/download/#{version}/gSwitch.zip"
  appcast 'https://github.com/CodySchrank/gSwitch/releases.atom'
  name 'gSwitch'
  homepage 'https://codyschrank.github.io/gSwitch/'

  depends_on macos: '>= :sierra'

  app 'gSwitch.app'
end
