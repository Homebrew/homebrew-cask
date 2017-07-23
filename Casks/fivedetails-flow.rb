cask 'fivedetails-flow' do
  version '1.7.2'
  sha256 '8337d4f2152d7b00bb18cde16475c47a3a2608a7d773ee7ce0dcc425ccfbc5b8'

  url 'http://fivedetails.com/flow/download'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'

  app 'Flow.app'

  caveats do
    discontinued
  end
end
