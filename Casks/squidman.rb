cask 'squidman' do
  version '3.8'
  sha256 'dcc1b304b9b4782c20ab323adab8f21be0b82b433f96afa82e3349b82bbb761b'

  url "http://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  name 'SquidMan'
  homepage 'https://squidman.net/squidman/'

  app 'SquidMan.app'

  zap delete: '/usr/local/squid'

  caveats do
    files_in_usr_local
  end
end
