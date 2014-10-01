class Bahamut < Cask
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/sdegutis/bahamut/master/Builds/Bahamut-LATEST.app.tar.gz'
  appcast 'https://raw.github.com/sdegutis/bahamut/master/appcast.xml'
  homepage 'https://github.com/sdegutis/bahamut'
  license :oss

  app 'Bahamut.app'
end
