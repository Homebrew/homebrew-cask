cask 'feeder' do
  version '3.4'
  sha256 '71256d755b70475aece4557fd8ff250a967ec6e4a643ee0b0e8123558c4a6ee2'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '5a0d77ac45bc1450278bf2fcb29ee034eed3dcab7319a3b4ae14e9617aa80bc7'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
