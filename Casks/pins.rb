cask 'pins' do
  version '1.8.0'
  sha256 '63872cf0bee1287266823062e3d0d810b23bdcc9285412f2214bcf6a5d2d65aa'

  url "http://pinsapp.com/download/Pins#{version}.zip"
  appcast 'http://pinsapp.com/appcast.xml',
          checkpoint: '5c64de791ef112795cdbd0b98eeb582a8c66d26e74ec0cdeb1ab8cbc52c163ef'
  name 'Pins'
  homepage 'http://pinsapp.com/'
  license :commercial

  app 'Pins.app'
end
