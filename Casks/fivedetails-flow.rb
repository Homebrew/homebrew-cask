cask :v1_1 => 'fivedetails-flow' do
  version :latest
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Flow.app'

  caveats do
    discontinued
  end
end
