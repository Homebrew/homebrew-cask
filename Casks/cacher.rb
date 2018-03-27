cask 'cacher' do
  version '1.3.10'
  sha256 '83ab6c0b2cf8d5c53012873c7996e99a537dd591be923446fef8f26b5ee3a676'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '63df46e31a77af9aefb646455984b5cfc1a12173d77906fbd3ae33f022a9680f'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
