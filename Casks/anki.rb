cask :v1 => 'anki' do

  if MacOS.release <= :snow_leopard
    version '2.0.33.qt47'
    sha256 '85a49099b37160c12b1ceb18d4728e99d87ed7d0e6ee978f237794a14b3b53d6'
  else
    version '2.0.33'
    sha256 '1a18498dff0bb4b9d6f493dc63a55d0b4f3e99ebfc122d83cd2ceec34fe9268b'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'
  license :affero

  depends_on :arch => :intel

  app 'Anki.app'
end
