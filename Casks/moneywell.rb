cask :v1 => 'moneywell' do
  version '2.3.4'
  sha256 'f4b900576657c669a40481d7c2ad1ad6d48a4468d16963d4e9c8ddeca9c1548a'

  url "http://downloads.nothirst.com/MoneyWell_#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.zip"
  appcast 'http://nothirst.com/feeds/MoneyWell2Appcast.xml',
          :sha256 => '8de9519f9ff874d9baf67feefbe3f258ca89e6c07fbdf35fef6f1a6c55af9ea2'
  homepage 'http://nothirst.com/moneywell/'
  license :unknown

  app 'MoneyWell.app'
end
