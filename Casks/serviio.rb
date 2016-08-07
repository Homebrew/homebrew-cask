cask 'serviio' do
  version '1.6'
  sha256 'c6305ef40bb39653a46adb35341511a15a17133c6145e8cce74bae9a96010ebd'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'
  license :commercial

  pkg "Serviio-#{version}.pkg"
end
