cask 'feeder' do
  version '3.5.3'
  sha256 '9b493309c60ab6d570aade2506dc40006ab487e627a5799800e794bd21b70ccc'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: 'bb2c8d6cf1f72404598fbce1cae60b7abb091cd07f911aa0fda2ca9b4d80922d'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
