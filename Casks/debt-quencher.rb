cask 'debt-quencher' do
  version '1.2.3'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url "http://downloads.nothirst.com/DebtQuencher_#{version.sub(%r{^(\d+)\.(\d+).*}, '\1.\2')}.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml',
          checkpoint: '2b2d1f8e28e357fe175bc344d8db93491dad790722b0e9c70edd33c649da748a'
  name 'Debt Quencher'
  homepage 'http://nothirst.com/debtquencher/'

  depends_on macos: '>= :tiger'

  app 'Debt Quencher.app'
end
