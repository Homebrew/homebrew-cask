cask :v1 => 'jettison' do
  version '1.5'
  sha256 'b502b1b0cd7730eea576fe7f524bd9914c0652dbbb631362300194cbc7f610ce'

  url "https://www.stclairsoft.com/download/Jettison-#{version}.dmg"
  name 'Jettison'
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          :sha256 => '0373bcc3c6c29abf5878f4db77bcf310241676ee0e4957940e041d158aad8442'
  homepage 'https://www.stclairsoft.com/Jettison/'
  license :freemium

  app 'Jettison.app'
end
