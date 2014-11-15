cask :v1 => 'dropletmanager' do
  version '0.5.0'
  sha256 'ed8011cef55f3bcdde4e7e7e331775808e4701fc41acc3191d3e4d80f8ab8335'

  url "https://github.com/deivuh/DODropletManager-OSX/releases/download/v#{version}/DropletManager.v#{version}.zip"
  homepage 'https://github.com/deivuh/DODropletManager-OSX'
  license :oss

  app 'DropletManager.app'
end
