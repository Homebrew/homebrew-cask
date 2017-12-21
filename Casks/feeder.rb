cask 'feeder' do
  version '3.5.5'
  sha256 'da842a18b6589bca7a3e9669b06590ce80444d6f3967c8414498e11c907426f1'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '5ae4817d34e2483e02d8da49f3a21d7be34ba3af6de8b3d679d8de3d76f79c38'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
