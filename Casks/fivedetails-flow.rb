cask 'fivedetails-flow' do
  version :latest
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php',
          :checkpoint => '1278a4390fd8345f94365aa5dde30ce195f4e879ade82e011ab9a4b6b56f27c6'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'
  license :commercial

  app 'Flow.app'

  caveats do
    discontinued
  end
end
