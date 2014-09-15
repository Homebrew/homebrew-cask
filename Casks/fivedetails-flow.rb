class FivedetailsFlow < Cask
  version 'latest'
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php'
  homepage 'http://fivedetails.com'

  app 'Flow.app'
end
