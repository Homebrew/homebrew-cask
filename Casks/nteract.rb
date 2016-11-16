cask 'nteract' do
  version '0.0.14'
  sha256 '0734cc687cdf64f499c760e951ea27810d8ddd05d5708f9384fcaeea82117108'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '2433d68b6a067c8fb04c19cc3c937bfc90de48e2d751c8547da623a8dd26e6eb'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
