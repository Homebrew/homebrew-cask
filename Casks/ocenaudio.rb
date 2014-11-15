cask :v1 => 'ocenaudio' do
  version :latest
  sha256 :no_check

  url 'http://www.ocenaudio.com.br/downloads/ocenaudio.dmg'
  homepage 'http://www.ocenaudio.com.br/en'
  license :unknown

  app 'ocenaudio.app'
end
