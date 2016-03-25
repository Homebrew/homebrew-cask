cask 'insync' do
  version '1.2.16.35181'
  sha256 'a80f07bd191228ba283a5b975326cf4d62dce28c600753ecadf66f00d361a22f'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'
  license :closed

  app 'Insync.app'
end
