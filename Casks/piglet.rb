cask 'piglet' do
  version '0.3.0'
  sha256 'b04999afd3dea7ec0e8e5026038d3f284bb118e09914003d934c5d9d872b6ee0'

  url "https://github.com/jenslind/piglet/releases/download/v#{version}/Piglet.zip"
  appcast 'https://github.com/jenslind/piglet/releases.atom',
          checkpoint: '31ffbcc1c5530ecf7e8e19caff41265c1631197b38bc873d9410800cbfbf7910'
  name 'Piglet'
  homepage 'https://github.com/jenslind/piglet'
  license :mit

  app 'Piglet.app'
end
