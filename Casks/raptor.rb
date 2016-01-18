cask 'raptor' do
  version '1.0rc4'
  sha256 'd78684e7d8abb829f2751390cea3d338c6bdad1c5cc90b1949776b02912e8c7c'

  url "https://github.com/Raptor-Fics-Interface/Raptor/releases/download/#{version}/Raptor_v1.0rc4_OS_X_Cocoa_x86_64.dmg"
  appcast 'https://github.com/Raptor-Fics-Interface/Raptor/releases.atom',
          checkpoint: 'c918964a81c1309703b9b228af864ca974294c5a76e4e8fc7a6692d4455e902c'
  name 'Raptor Chess Interface'
  homepage 'https://github.com/raptor-fics-interface/raptor'
  license :bsd

  app 'Raptor.app'
end
