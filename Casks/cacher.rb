cask 'cacher' do
  version '1.3.1'
  sha256 '7b9af384b88d94376685255093e43d73f94c273b5f9c2d94bd9470a52bb51703'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: 'cbee57ab09af2ff98d5237e18c4efde403637a71c5f752d43708d0e4249adc85'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
