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
    version '2.3.6'
    sha256 'f4b900576657c669a40481d7c2ad1ad6d48a4468d16963d4e9c8ddeca9c1548a'

    url "http://downloads.nothirst.com/MoneyWell_#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.zip"
    appcast 'http://nothirst.com/feeds/MoneyWell2Appcast.xml',
            :sha256 => '768e6407c797e9cda478b3e16df53ffeeae7e3a1729e2871ab714e3d78b44869'
  end
  name 'MoneyWell'
  homepage 'http://nothirst.com/moneywell/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on :macos => '>= :tiger'

  app 'MoneyWell.app'
end
