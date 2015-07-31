cask :v1 => 'feeder' do
  version '3.0.1'
  sha256 '6a58fe628d4be5f47a1337c799627bca8487ceff38ac8f015a00a38b678b5ee4'

  url "http://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'http://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          :sha256 => '06b49b67228d5fe9eea71dbc8e4b8779cba193b1792b6a470d274d5cc0dd518a'
  name 'Feeder'
  homepage 'http://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder.app'
end
