cask 'preform' do
  version '1.8.1_1'
  sha256 '51ed43f83821c9ba10a50d315990aa59ede13a64e46bda438a3e113a93385209'

  # s3.amazonaws.com/FormlabsReleases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.sub(%r{_.*}, '')}/PreForm_#{version}.dmg"
  name 'PreForm'
  homepage 'http://formlabs.com/en/products/preform/'
  license :gratis

  app 'PreForm.app'
end
