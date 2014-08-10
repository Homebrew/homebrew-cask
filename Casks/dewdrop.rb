class Dewdrop < Cask
  version '0.4'
  sha256 '88cf0ff182f5b4c49e761186b735e69b4a2d724e4e8781d4f87121faac850c57'

  url 'http://dewdrop.dangelov.com/binaries/DewdropClient-0.4-Mac.tar.gz'
  appcast 'http://dewdrop.dangelov.com/mac-appcast/updates.xml'
  homepage 'http://dewdrop.dangelov.com/'

  link 'Dewdrop.app'

  caveats do
    <<-EOF.undent
    Available server implementations:

      * https://github.com/dewdrop-org/Server-PHP
      * https://github.com/dewdrop-org/Server-Node.js

    You may wish to script your preferences using `defaults` ... e.g.:

      defaults write dangelov.Dewdrop ddUsername "$USER"
      defaults write dangelov.Dewdrop ddPassword "secret"
      defaults write dangelov.Dewdrop ddServer "https://dewdrop.example.org"
      defaults write dangelov.Dewdrop automaticallyUploadScreenshots 1

    EOF
  end
end
