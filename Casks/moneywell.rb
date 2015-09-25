cask :v1 => 'moneywell' do
  if MacOS.release <= :tiger
    version '1.4.13'
    sha256 'b2eb23a4d5d9e555d00529f83d4cae43abc184c9174a4b729693b55787dfd64d'

    url "http://downloads.nothirst.com/MoneyWell_#{version.to_f}.zip"
  elsif MacOS.release <= :snow_leopard
    version '1.7.3'
    sha256 '6f34a57999fcc09147035f62caff7efede3a385c0f2e7b6f3f90e9a64e826410'

    url "http://downloads.nothirst.com/MoneyWell_#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.zip"
  else
    version '2.3.7'
    sha256 '875da2864f364eaaa7fd81158ab58d1ad20e9e6a8fb6ba6ccdf6bad192f0da31'

    # zenvilla.com is the official download host per the appcast feed
    url "http://zenvilla.com/mw/builds/MoneyWell-#{version}.zip"
    appcast 'http://nothirst.com/feeds/MoneyWell2Appcast.xml',
            :sha256 => '7a674954d04d3225000008160fb64efc8c76fc3dcaf2394af7e9ebebb8394b71'
  end
  name 'MoneyWell'
  homepage 'http://nothirst.com/moneywell/'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'MoneyWell.app'
end
