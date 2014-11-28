cask :v1 => 'dewdrop' do
  version '0.4'
  sha256 '88cf0ff182f5b4c49e761186b735e69b4a2d724e4e8781d4f87121faac850c57'

  url "http://dewdrop.dangelov.com/binaries/DewdropClient-#{version}-Mac.tar.gz"
  appcast 'http://dewdrop.dangelov.com/mac-appcast/updates.xml',
          :sha256 => 'cc5d4548c5de855094a44f026c78cf7a3dfccd9b29a79c29eeb7caaa4bd7acb3'
  homepage 'http://dewdrop.dangelov.com/'
  license :oss

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
