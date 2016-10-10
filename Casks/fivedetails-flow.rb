cask 'fivedetails-flow' do
  version '1.7.2'
  sha256 '8337d4f2152d7b00bb18cde16475c47a3a2608a7d773ee7ce0dcc425ccfbc5b8'

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php',
          checkpoint: '1278a4390fd8345f94365aa5dde30ce195f4e879ade82e011ab9a4b6b56f27c6'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'

  app 'Flow.app'

  caveats do
    discontinued
  end
end
