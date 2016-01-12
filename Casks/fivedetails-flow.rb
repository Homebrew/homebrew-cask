cask 'fivedetails-flow' do
  version :latest
  sha256 :no_check

  url 'http://fivedetails.com/flow/download'
  appcast 'http://extendmac.com/flow/updates/update.php',
          :sha256 => '0d91e2ec0f6c0aac914d30145336c823d98af87ba0d822503197750f09334999'
  name 'Flow'
  homepage 'http://fivedetails.com/flow/'
  license :commercial

  app 'Flow.app'

  caveats do
    discontinued
  end
end
