cask 'openpht' do
  version '1.8.0.148-573b6d73'
  sha256 '153cbba8d9bb7f61c646fc4221f4ab107a15809d7bf5da41204dac49fbba0553'

  url "https://github.com/RasPlex/OpenPHT/releases/download/v#{version}/OpenPHT-#{version}-macosx-x86_64.zip"
  appcast 'https://github.com/RasPlex/OpenPHT/releases.atom',
          checkpoint: '1263ce478e7c757b185488855a1a50f55bfd99b4170d3fbf226d647ef4606733'
  name 'OpenPHT'
  homepage 'https://github.com/RasPlex/OpenPHT'

  app 'OpenPHT.app'
end
