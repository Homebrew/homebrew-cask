cask 'insync' do
  version '1.5.1.37343'
  sha256 '7bfa4cfc326d5fdb55a861aab4484023512c0e098123f879c79ef1583ae45f63'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  auto_updates true
  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
