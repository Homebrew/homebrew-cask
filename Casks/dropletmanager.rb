cask 'dropletmanager' do
  version '0.5.0'
  sha256 'ed8011cef55f3bcdde4e7e7e331775808e4701fc41acc3191d3e4d80f8ab8335'

  url "https://github.com/deivuh/DODropletManager-OSX/releases/download/v#{version}/DropletManager.v#{version}.zip"
  appcast 'https://github.com/deivuh/DODropletManager-OSX/releases.atom',
          checkpoint: '225847ad07f81ba7841e04106f2b91c851d366d99509929a134b0476688871cf'
  name 'DigitalOcean Droplets Manager'
  homepage 'https://github.com/deivuh/DODropletManager-OSX'
  license :gpl

  app 'DropletManager.app'
end
