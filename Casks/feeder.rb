cask :v1 => 'feeder' do
  version '3.1.2'
  sha256 '2cc347d6dcae1c38c841b15ab249a76ead016b15bc14d4dbc32ffeb485df6afa'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => 'd3f3ac490dc7f0a8417e2b08342297cf7ef7b2d95842589cac62852f35089814'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
