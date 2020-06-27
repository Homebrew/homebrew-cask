cask 'autenticacao.gov.pt' do
  version '3.1.2'
  sha256 '1fddce88483125d520530f71ebc06b5737aa40e867b3567c119292fc222d7c82'

  url 'https://www.autenticacao.gov.pt/documents/20126/78595/Autenticacao.gov_MacOS.pkg'
  name 'Autenticacao.gov.pt'
  homepage 'https://www.autenticacao.gov.pt/web/guest/cc-aplicacao'

  pkg 'Autenticacao.gov_MacOS.pkg'

  uninstall pkgutil: ['pt.cartaodecidadao.lib', 'pt.cartaodecidadao.bin', 'pt.cartaodecidadao.certs', 'pt.cartaodecidadao.apps'],
            signal:  ['TERM', 'pt.gov.autenticacao']
end
