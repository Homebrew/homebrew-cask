cask 'jettison' do
  version '1.5'
  sha256 'b502b1b0cd7730eea576fe7f524bd9914c0652dbbb631362300194cbc7f610ce'

  url "https://www.stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          checkpoint: 'fa83610c6373410e200e1cce210b5611575968e883aa33772bf91b17aaccdc7f'
  name 'Jettison'
  homepage 'https://www.stclairsoft.com/Jettison/'
  license :freemium

  app 'Jettison.app'
end
