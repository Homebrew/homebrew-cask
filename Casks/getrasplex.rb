cask 'getrasplex' do
  version '1.0.1'
  sha256 '78ffbeb70754495e1dd686e3c351e89d2cf76d64e13b9339e03063c9e942b2ad'

  # github.com/RasPlex/rasplex-installer was verified as official when first introduced to the cask
  url "https://github.com/RasPlex/rasplex-installer/releases/download/#{version}/GetRasplex-#{version}.dmg"
  appcast 'https://github.com/RasPlex/rasplex-installer/releases.atom',
          checkpoint: '7923f2385ad8b4575332deb4fbd14a95ea3724db4497498b3971c2cf6b703c0b'
  name 'Rasplex Installer'
  homepage 'http://www.rasplex.com/'

  app 'GetRasplex.app'
end
