cask 'jettison' do
  version '1.5'
  sha256 'b502b1b0cd7730eea576fe7f524bd9914c0652dbbb631362300194cbc7f610ce'

  url "https://www.stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          :sha256 => '6174a2896064eb12d43898bd3787af1359fd4b125fea0f9f43d263d62f170811'
  name 'Jettison'
  homepage 'https://www.stclairsoft.com/Jettison/'
  license :freemium

  app 'Jettison.app'
end
