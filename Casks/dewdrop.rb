cask 'dewdrop' do
  version '0.4'
  sha256 '88cf0ff182f5b4c49e761186b735e69b4a2d724e4e8781d4f87121faac850c57'

  url "http://dewdrop.dangelov.com/binaries/DewdropClient-#{version}-Mac.tar.gz"
  appcast 'http://dewdrop.dangelov.com/mac-appcast/updates.xml',
          checkpoint: '0e697e33ef9613eaf868ba539db57d725bfaf0414e37bbab7bc50971095d33f0'
  name 'Dewdrop Client'
  homepage 'http://dewdrop.dangelov.com/'
  license :gpl

  app 'Dewdrop.app'

  caveats <<-EOS.undent
    Available server implementations

      https://github.com/dewdrop-org/Server-PHP
      https://github.com/dewdrop-org/Server-Node.js

    You may wish to script your preferences using "defaults", eg

      defaults write dangelov.Dewdrop ddUsername "$USER"
      defaults write dangelov.Dewdrop ddPassword "secret"
      defaults write dangelov.Dewdrop ddServer "https://dewdrop.example.org"
      defaults write dangelov.Dewdrop automaticallyUploadScreenshots 1
  EOS
end
