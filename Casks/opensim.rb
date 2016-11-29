cask 'opensim' do
  version '0.0.6'
  sha256 '79cc8a041f470da4f463e8d0087d928dce9c2519b5ed5a6e221d47a205bc2a42'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom',
          checkpoint: '8e6ab4bdbed55df1cba0cf229007cee1bebb550bbb4fbf252a6ea92d5997fa82'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
