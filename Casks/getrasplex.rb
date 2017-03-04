cask 'getrasplex' do
  version '1.0.1'
  sha256 '78ffbeb70754495e1dd686e3c351e89d2cf76d64e13b9339e03063c9e942b2ad'

  # github.com/RasPlex/rasplex-installer was verified as official when first introduced to the cask
  url "https://github.com/RasPlex/rasplex-installer/releases/download/#{version}/GetRasplex-#{version}.dmg"
  appcast 'https://github.com/RasPlex/rasplex-installer/releases.atom',
          checkpoint: '370b7b8c278eb603e593b76b5c0cff1afc97cd592b189403492d3f19f3987f91'
  name 'Rasplex Installer'
  homepage 'http://www.rasplex.com/'

  app 'GetRasplex.app'
end
