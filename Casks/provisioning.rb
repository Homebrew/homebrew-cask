cask :v1 => 'provisioning' do
  version '1.0.4'
  sha256 '554590ab653776babbc453892653d052f1ec09c6473fc91f4a071f1a7a953144'

  url "https://github.com/chockenberry/Provisioning/releases/download/#{version}/Provisioning-#{version}.zip"
  homepage 'https://github.com/chockenberry/Provisioning'
  license :oss

  qlplugin "Provisioning-#{version}/Provisioning.qlgenerator"
end
