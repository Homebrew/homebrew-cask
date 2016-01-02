cask 'fivedetails-flow' do
  version :latest
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php',
          :sha256 => 'e2cbae3f78c6725a9d2f8f08901afa92c4e75e6686b15011272f2173850eb701'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'
  license :commercial

  app 'Flow.app'

  caveats do
    discontinued
  end
end
