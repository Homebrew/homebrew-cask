cask 'morkro-papyrus' do
  version '1.0.2'
  sha256 '56224eadffc9be30a240790487919406fb6ffc8e952c1446de696850b209bca8'

  url "https://github.com/morkro/papyrus/releases/download/#{version}/Papyrus-osx-#{version}.zip"
  appcast 'https://github.com/morkro/papyrus/releases.atom',
          checkpoint: 'ff73e8d692001f894192ce94aa67352fcae9a43f6fce5313852a39e63762586a'
  name 'Papyrus'
  homepage 'https://github.com/morkro/papyrus'

  app 'Papyrus.app'
end
