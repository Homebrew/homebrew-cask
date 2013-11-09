# You probably want to change the appdir to /usr/local/bin
# brew cask install serf --appdir=/usr/local/bin
class Serf < Cask
  url 'https://dl.bintray.com/mitchellh/serf/0.2.1_darwin_amd64.zip'
  homepage 'http://www.serfdom.io'
  version '0.2.1'
  sha1 '530df1e78423d22e6f087a1cfd886a9376cbebd3'
  link 'serf'
end
