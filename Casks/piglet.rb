cask 'piglet' do
  version '0.3.0'
  sha256 'b04999afd3dea7ec0e8e5026038d3f284bb118e09914003d934c5d9d872b6ee0'

  url "https://github.com/jenslind/piglet/releases/download/v#{version}/Piglet.zip"
  appcast 'https://github.com/jenslind/piglet/releases.atom',
          checkpoint: 'd434649049ce056aba87d66106bad087ddb2d46ef6f990b5641b14cf6a22006b'
  name 'Piglet'
  homepage 'https://github.com/jenslind/piglet'

  app 'Piglet.app'
end
