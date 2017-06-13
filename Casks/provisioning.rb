cask 'provisioning' do
  version '1.0.4'
  sha256 '554590ab653776babbc453892653d052f1ec09c6473fc91f4a071f1a7a953144'

  url "https://github.com/chockenberry/Provisioning/releases/download/#{version}/Provisioning-#{version}.zip"
  appcast 'https://github.com/chockenberry/Provisioning/releases.atom',
          checkpoint: 'cd2b64b4a4456f1cf0f27655bb6e1b910e98f51f22fd4bb4335f7148766e351d'
  name 'Provisioning'
  homepage 'https://github.com/chockenberry/Provisioning'

  qlplugin "Provisioning-#{version}/Provisioning.qlgenerator"
end
