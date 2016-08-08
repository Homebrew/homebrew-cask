cask 'anki' do
  if MacOS.version <= :snow_leopard
    version '2.0.34.qt47'
    sha256 '83b008ad8ebb20247a673de3e37908d96cbb8573e5257b826176f5649a4ef6b7'
  else
    version '2.0.36'
    sha256 '4e229ace72b11b93186af31183ae365bb24c5f14d098b7c4bb564d16c3dfbc3c'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'
  license :affero

  depends_on arch: :intel

  app 'Anki.app'
end
