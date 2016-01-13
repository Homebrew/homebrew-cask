cask 'debt-quencher' do
  version '1.2.3'
  sha256 '2083fdb28d3138998a0d6b4b5c4405a18a2e8dd7b71554786386623313c166ad'

  url "http://downloads.nothirst.com/DebtQuencher_#{version.sub(%r{^(\d+)\.(\d+).*}, '\1.\2')}.zip"
  appcast 'http://nothirst.com/feeds/DebtQuencherAppcast.xml',
          :sha256 => '94b828b02a48d534a892040858ff4749925ee8e3bfc9152af0c0a7144d3cd34e'
  name 'Debt Quencher'
  homepage 'http://nothirst.com/debtquencher/'
  license :freemium

  depends_on :macos => '>= :tiger'

  app 'Debt Quencher.app'
end
