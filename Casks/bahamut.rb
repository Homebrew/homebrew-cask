class Bahamut < Cask
  url 'https://raw.github.com/sdegutis/bahamut/master/Builds/Bahamut-LATEST.app.tar.gz'
  appcast 'https://raw.github.com/sdegutis/bahamut/master/appcast.xml'
  homepage 'https://github.com/sdegutis/bahamut'
  version 'latest'
  sha256 :no_check
  link 'Bahamut.app'
end
