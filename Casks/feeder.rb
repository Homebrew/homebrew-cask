cask 'feeder' do
  version '3.3.1'
  sha256 '6c5959f7934f881fdfec8ed66f8a08d40391e9db921ddccb49323ddd7eb69719'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast "https://reinventedsoftware.com/feeder/downloads/Feeder#{version.major}.xml",
          checkpoint: '945cfcd54d1b5009d104bebd09b30e6817740e991650368dca473f3e86acdaa8'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
