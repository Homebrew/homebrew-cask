cask 'beagleim' do
  version '3.4'
  sha256 'e00b44abfe5549030c92d4686d10369eb023cf79fae15a132a80606c0fd06583'

  # github.com/tigase/beagle-im was verified as official when first introduced to the cask
  url "https://github.com/tigase/beagle-im/releases/download/#{version}/BeagleIM.#{version}.zip"
  appcast 'https://github.com/tigase/beagle-im/releases.atom'
  name 'BeagleIM'
  homepage 'https://beagle.im/'

  app "BeagleIM #{version}.app"
end
