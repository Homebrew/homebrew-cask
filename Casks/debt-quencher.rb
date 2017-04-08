cask 'debt-quencher' do
  version '1.2.3'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url "http://downloads.nothirst.com/DebtQuencher_#{version.sub(%r{^(\d+)\.(\d+).*}, '\1.\2')}.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml',
          checkpoint: 'e9dfeda02779bfceea5fb34278f5d28f97d2c6403242d6ba0520c8850a910195'
  name 'Debt Quencher'
  homepage 'http://nothirst.com/debtquencher/'

  depends_on macos: '>= :tiger'

  app 'Debt Quencher.app'
end
