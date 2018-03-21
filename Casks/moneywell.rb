cask 'moneywell' do
  version '3.0.6'
  sha256 'b9f1023f989e25d40446672ed15d509723be4398125232a920abef66400eae6d'

  url "https://moneywellapp.com/mw/builds/MoneyWell-#{version}.zip"
  appcast "https://moneywellapp.com/mw/feeds/#{version.major}x/appcast.xml",
          checkpoint: '6c0ac38624db461f5a1f2eec0d96e8c3625eddd849502d5249b38c2d11b2efcd'
  name 'MoneyWell'
  homepage 'https://moneywellapp.com/'

  app 'MoneyWell.app'
end
