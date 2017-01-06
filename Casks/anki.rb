cask 'anki' do
  if MacOS.version <= :snow_leopard
    version '2.0.38-alternate'
    sha256 '75c3f0043c85dac19720ce27d81deda69544f0c0a6465bd4fb1970814b07b9b4'
  else
    version '2.0.38'
    sha256 'aa5bf1494c10fbdc6ea89a1ed3026c03634a8babf3f3330ddca7b9a2f4a01b87'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'http://ankisrs.net/'

  app 'Anki.app'
end
