cask :v1 => 'iexplorer' do
  version '3.5.1.6'
  sha256 'cf965c4b1f686333adf34b0d72e4f2736ceb6f79fc871ddcecf92f8769667fcf'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '50a537b61eec96833d145abfe25affc972579f4e01cf3876aa6596ba5320db26'
  homepage 'http://www.macroplant.com/'
  license :unknown

  app 'iExplorer.app'
end
