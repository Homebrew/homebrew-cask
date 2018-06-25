cask 'raptor' do
  version '1.0'
  sha256 '66ec547bfb6eb8ecc2fcb2932631c75c9142515201e4079152b51ed005657f3a'

  url "https://github.com/Raptor-Fics-Interface/Raptor/releases/download/v#{version}/Raptor_v#{version}_OS_X_Cocoa_x86_64.dmg"
  appcast 'https://github.com/Raptor-Fics-Interface/Raptor/releases.atom'
  name 'Raptor Chess Interface'
  homepage 'https://github.com/raptor-fics-interface/raptor'

  app 'Raptor.app'
end
