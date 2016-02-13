cask 'bee' do
  version '2.3.2'
  sha256 'f2e448b389063f3be306705553807b8b424e90b0808f0e6525d8b353a42f90c7'

  # bee-app.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'a8bcc6df65c976671ab7a3bbba0864e35a146cfe5bd48cf3638d2b07a361afbe'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
