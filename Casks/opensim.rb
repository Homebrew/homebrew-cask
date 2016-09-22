cask 'opensim' do
  version '0.0.6'
  sha256 '79cc8a041f470da4f463e8d0087d928dce9c2519b5ed5a6e221d47a205bc2a42'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim'
  license :mit

  app 'OpenSim.app'
end
