cask 'anki' do
  if MacOS.version <= :snow_leopard
    version '2.0.38-alternate'
    sha256 '75c3f0043c85dac19720ce27d81deda69544f0c0a6465bd4fb1970814b07b9b4'
  else
    version '2.0.40'
    sha256 '4089d1dfa5e94a161d9a2e8596f7622c9103046020b72590ab1d8be5f42687db'
  end

  url "http://ankisrs.net/download/mirror/anki-#{version}.dmg"
  name 'Anki'
  homepage 'https://ankisrs.net/'

  app 'Anki.app'
end
