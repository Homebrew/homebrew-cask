cask :v1 => 'prezi' do
  version '5.1.1'
  sha256 'cd77adf228b237f24407a4a7c8e57463b27ad98d9885451e42cc7416484cce56'

  url "https://prezi-a.akamaihd.net/desktop/Prezi#{version}.dmg"
  homepage 'http://www.prezi.com/'
  license :unknown

  app 'Prezi.app'
end
