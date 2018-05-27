cask 'cacher' do
  version '1.5.3'
  sha256 'f054ac3c5b3f1a7f4f1b5438359ae059aa5689237b54e23aa8bbf08fb248ddcc'

  # cacher-download.nyc3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://cacher-download.nyc3.digitaloceanspaces.com/Cacher-#{version}-mac.zip"
  appcast 'https://cacher-download.nyc3.digitaloceanspaces.com/latest-mac.json',
          checkpoint: '5955b7c7c3ef407cae23172db56f0e37d9ff5ee650bd3dd923626799788212ee'
  name 'Cacher'
  homepage 'https://www.cacher.io/'

  app 'Cacher.app'
end
