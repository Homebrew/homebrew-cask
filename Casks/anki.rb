cask 'anki' do
  if MacOS.release <= :snow_leopard
    version '2.0.33.qt47'
    sha256 '85a49099b37160c12b1ceb18d4728e99d87ed7d0e6ee978f237794a14b3b53d6'
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
