cask 'jettison' do
  version '1.5'
  sha256 'b502b1b0cd7730eea576fe7f524bd9914c0652dbbb631362300194cbc7f610ce'

  url "https://www.stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          :sha256 => '57acc380eea827a3f0325ca5df9a697f9d5c27999ffc4780aa553ae8543c33ce'
  name 'Jettison'
  homepage 'https://www.stclairsoft.com/Jettison/'
  license :freemium

  app 'Jettison.app'
end
