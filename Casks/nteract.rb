cask 'nteract' do
  version '0.0.14'
  sha256 '0734cc687cdf64f499c760e951ea27810d8ddd05d5708f9384fcaeea82117108'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"

  name 'nteract'
  homepage 'https://github.com/nteract'

  app 'nteract.app'

  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855i'
end
