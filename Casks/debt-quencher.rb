cask :v1 => 'debt-quencher' do
  version '1.2.2'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url "http://downloads.nothirst.com/DebtQuencher_#{version.sub(%r{^(\d+)\.(\d+).*},'\1.\2')}.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml',
          :sha256 => 'c4cf59373c8956515d82f9ede91e326a770154ec10d637772f48c6aab1149b73'
  homepage 'http://nothirst.com/debtquencher/'
  license :unknown

  app 'Debt Quencher.app'
end
