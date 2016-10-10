cask 'itau' do
  version :latest
  sha256 :no_check

  url 'https://guardiao.itau.com.br/UpdateServer/aplicativoitau.dmg'
  name 'Itau'
  homepage 'https://www.itau.com.br/computador/'

  app 'Itau.app'
end
