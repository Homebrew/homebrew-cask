cask 'opensim' do
  version '0.1.0'
  sha256 'e500dd0f48659f0f0417cd63510ecc8e8bd3ce0774f4bbb443f7c6ac3b0f1c6e'

  url "https://github.com/luosheng/OpenSim/releases/download/#{version}/OpenSim.app.zip"
  appcast 'https://github.com/luosheng/OpenSim/releases.atom',
          checkpoint: 'f82481d795ccd4de27bbe9d8aaef70b52cbbbc3bd1e76bbfdbb9c7381e76987a'
  name 'OpenSim'
  homepage 'https://github.com/luosheng/OpenSim/'

  app 'OpenSim.app'
end
