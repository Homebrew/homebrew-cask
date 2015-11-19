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
    version '2.3.9'
    sha256 '0d262ee3c816e30088746d56f71475c46da82362d1edb3d50cf5dd416bd35a6f'

    # zenvilla.com is the official download host per the appcast feed
    url "http://zenvilla.com/mw/builds/MoneyWell-#{version}.zip"
    appcast 'http://nothirst.com/feeds/MoneyWell2Appcast.xml',
            :sha256 => '1148b01298bca85e78043ee44c5118154926a2be5bf1443e044e6bdfe116e1c0'
  end
  name 'MoneyWell'
  homepage 'http://nothirst.com/moneywell/'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'MoneyWell.app'
end
