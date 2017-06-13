cask 'dropletmanager' do
  version '0.5.0'
  sha256 'ed8011cef55f3bcdde4e7e7e331775808e4701fc41acc3191d3e4d80f8ab8335'

  url "https://github.com/deivuh/DODropletManager-OSX/releases/download/v#{version}/DropletManager.v#{version}.zip"
  appcast 'https://github.com/deivuh/DODropletManager-OSX/releases.atom',
          checkpoint: 'b162f433f91d6b67054058c53033f02606b5fe9850f2cd7c6393af8a8976922d'
  name 'DigitalOcean Droplets Manager'
  homepage 'https://github.com/deivuh/DODropletManager-OSX'

  app 'DropletManager.app'
end
