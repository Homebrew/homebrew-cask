class DebtQuencher < Cask
  version '1.2.2'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url 'http://downloads.nothirst.com/DebtQuencher_1.2.zip'
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml'
  homepage 'http://nothirst.com/debtquencher/'

  app 'Debt Quencher.app'
end
