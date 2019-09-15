cask 'squidman' do
  version '4.0'
  sha256 '65cb14bda5b8d73575567377703021af5bdba5be4c3512e13f6d21e59819ba44'

  url "https://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  appcast 'https://squidman.net/squidman/releasenotes/index.html'
  name 'SquidMan'
  homepage 'https://squidman.net/squidman/'

  app 'SquidMan.app'

  zap trash: '/usr/local/squid'

  caveats do
    files_in_usr_local
  end
end
