cask 'feeder' do
  version '3.4.5'
  sha256 '767ce870dbdebd86f6e7a3d429631ff01a76f38ad30bbee22ec37f6330378829'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '302aedf8f58105111e08073037dc9a6fdc055097845de7a6fe7e358bad0395a4'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'

  app "Feeder #{version.major}.app"
end
