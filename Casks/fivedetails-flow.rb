cask 'fivedetails-flow' do
  version '1.7.2'
  sha256 '8337d4f2152d7b00bb18cde16475c47a3a2608a7d773ee7ce0dcc425ccfbc5b8'

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php',
          checkpoint: '19ace39f9820f653f5a1af52764589637db1b15503b0c245aeb78b55b101dd68'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'

  app 'Flow.app'

  caveats do
    discontinued
  end
end
