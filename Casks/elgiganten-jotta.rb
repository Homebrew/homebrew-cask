cask 'elgiganten-jotta' do
  version :latest
  sha256 :nocheck

  url 'https://cloud.elgiganten.dk/update/elgiganten/current/elgiganten.dmg'
  name 'Elgiganten Cloud'
  homepage 'https://cloud.elgiganten.dk/'

  app 'Jotta.app'
end
