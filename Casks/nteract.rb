cask 'nteract' do
  version '0.0.14'
  sha256 '0734cc687cdf64f499c760e951ea27810d8ddd05d5708f9384fcaeea82117108'

  url "https://github.com/nteract/nteract/releases/download/v0.0.14/nteract-#{version}.dmg"
  name 'nteract'
  homepage 'https://github.com/nteract'

  app 'nteract.app'
end
