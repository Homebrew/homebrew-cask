cask 'feeder' do
  version '3.5.2'
  sha256 'd5e1b150c6085b74573d27195bb65f0a5d6445c9425eee9eb28c0f9fe07abd89'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '902a5cd7ba7e51dd39566d1cbc0fc7c2b5851f67458863ff5ee641115bf379bd'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
