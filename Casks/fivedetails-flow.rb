cask :v1 => 'fivedetails-flow' do
  version :latest
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php'
  homepage 'http://fivedetails.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Flow.app'
end
