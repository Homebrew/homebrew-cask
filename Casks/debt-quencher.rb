cask :v1 => 'debt-quencher' do
  version '1.2.3'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url "http://downloads.nothirst.com/DebtQuencher_#{version.sub(%r{^(\d+)\.(\d+).*},'\1.\2')}.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml',
          :sha256 => '28091e568c2ebfacd37e9a0e33de29e8e0ac43ad5e596446d4cc4d9173239a89'
  name 'Debt Quencher'
  homepage 'http://nothirst.com/debtquencher/'
  license :freemium

  depends_on :macos => '>= :tiger'

  app 'Debt Quencher.app'
end
