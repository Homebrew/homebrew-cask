cask :v1 => 'anki' do

  if MacOS.release <= :snow_leopard
    version '2.0.32.qt47'
    sha256 '6e1f8ef67c9180b11779931f73770bb0e8fd3907c1aad7cdfde5b57d27309505'
  else
    version '2.0.32'
    sha256 'fe0bdbb675f7c5fda9abdf48f24b0bb8f58c2d33b5b32eb9953faedb9e4d5235'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'
  license :affero

  depends_on :arch => :intel

  app 'Anki.app'
end
