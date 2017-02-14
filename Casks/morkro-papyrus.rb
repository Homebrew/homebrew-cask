cask 'morkro-papyrus' do
  version '1.0.2'
  sha256 '56224eadffc9be30a240790487919406fb6ffc8e952c1446de696850b209bca8'

  url "https://github.com/morkro/papyrus/releases/download/#{version}/Papyrus-osx-#{version}.zip"
  appcast 'https://github.com/morkro/papyrus/releases.atom',
          checkpoint: 'f22ccbcd9ec38efaf29618ee61c2c3ede100469afeb5c16502a943e0ddeb00d1'
  name 'Papyrus'
  homepage 'https://github.com/morkro/papyrus'

  app 'Papyrus.app'
end
