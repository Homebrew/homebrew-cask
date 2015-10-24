cask :v1 => 'feeder' do
  version '3.0.4'
  sha256 '308f5462aa6d705cc4c6b1c18824c7e4cb8d4b52521c6e3382f62376d8690f14'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => '1a037d026be46a2e5719a001ead5efa704d5e17986cd238aefe78f93686e3854'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
