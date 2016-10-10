cask 'provisioning' do
  version '1.0.4'
  sha256 '554590ab653776babbc453892653d052f1ec09c6473fc91f4a071f1a7a953144'

  url "https://github.com/chockenberry/Provisioning/releases/download/#{version}/Provisioning-#{version}.zip"
  appcast 'https://github.com/chockenberry/Provisioning/releases.atom',
          checkpoint: '2474895e1fc8f47213e752c8f62a910d0f015e53b924ff3c7f20f48296b79dc9'
  name 'Provisioning'
  homepage 'https://github.com/chockenberry/Provisioning'

  qlplugin "Provisioning-#{version}/Provisioning.qlgenerator"
end
