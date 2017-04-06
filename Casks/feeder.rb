cask 'feeder' do
  version '3.4.3'
  sha256 '5822bc2e9176f93f84ff9b85f2c23557d1a8044037f4d32ce1d861ac3cd5f814'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: 'e886c0e0131faef9a25fd8406d288a61dcbb70cbab6720b2ae1cdf03fea0a29a'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
