cask 'raptor' do
  version '1.0'
  sha256 '66ec547bfb6eb8ecc2fcb2932631c75c9142515201e4079152b51ed005657f3a'

  url "https://github.com/Raptor-Fics-Interface/Raptor/releases/download/v#{version}/Raptor_v#{version}_OS_X_Cocoa_x86_64.dmg"
  appcast 'https://github.com/Raptor-Fics-Interface/Raptor/releases.atom',
          checkpoint: '2d1999751d09f7abf7049f3a07f9815f6721fa16ce5300f522a5317db6809ec6'
  name 'Raptor Chess Interface'
  homepage 'https://github.com/raptor-fics-interface/raptor'

  app 'Raptor.app'
end
