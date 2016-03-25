cask 'ocenaudio' do
  version :latest
  sha256 :no_check

  url 'http://www.ocenaudio.com.br/downloads/ocenaudio64.dmg'
  name 'ocenaudio'
  homepage 'http://www.ocenaudio.com.br/en'
  license :gratis

  app 'ocenaudio.app'
end
