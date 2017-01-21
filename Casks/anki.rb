cask 'anki' do
  if MacOS.version <= :snow_leopard
    version '2.0.40-alternate'
    sha256 'a0087c85bbc27148a5e00bf40d5caad2ceb5ce09deac1f4385d87f54f0a36565'
  else
    version '2.0.40'
    sha256 '4089d1dfa5e94a161d9a2e8596f7622c9103046020b72590ab1d8be5f42687db'
  end

  url "https://apps.ankiweb.net/downloads/current/anki-#{version}.dmg"
  name 'Anki'
  homepage 'https://apps.ankiweb.net/'

  app 'Anki.app'
end
