cask 'nteract' do
  version '0.9.0'
  sha256 '3e7cf211ef81ac0898ff8ae647a3b8c5701c718fec8425bf534cb580b7940d71'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
