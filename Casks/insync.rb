cask 'insync' do
  version '1.3.12.36116'
  sha256 '5439cd459776fdab9f285bdacead90fed199c398b1125b01e0c7b97db1e6b8d1'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
