cask 'poi' do
  version '7.8.0'
  sha256 '840fc068b106b07de19098f06c98b6590dc6626e43587d3a65bf5c519a5dc3ba'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '6e500d26ec04e58eb2cab4ef67b706ea027024f20543020ef19133e1a963d65f'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
