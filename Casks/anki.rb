cask 'anki' do
  if MacOS.version <= :snow_leopard
    version '2.0.36.qt47'
    sha256 '365d11edfad2e828db58031af03b4af3fa95b18bbbb09e59c4ba97eb2fee7a97'
  else
    version '2.0.36'
    sha256 '4e229ace72b11b93186af31183ae365bb24c5f14d098b7c4bb564d16c3dfbc3c'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'

  depends_on arch: :intel

  app 'Anki.app'
end
