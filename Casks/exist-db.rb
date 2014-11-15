cask :v1 => 'exist-db' do
  version '2.2RC2'
  sha256 '35aa7e36f21043629a7d562968cc803e6dae84429be4a0d1c77ed62bdf6f9f2f'

  url "http://downloads.sourceforge.net/sourceforge/exist/eXist-db-#{version}.dmg"
  homepage 'http://exist-db.org/'
  license :oss

  app 'eXist-db.app'
end
