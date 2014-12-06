cask :v1 => 'monolingual' do
  version '1.6.1'
  sha256 '45110312eba0ffb0ea92f3ac36850b3e557c07d2cdc294b677769eccd5da5697'

  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  homepage 'https://ingmarstein.github.io/Monolingual/'
  license :oss

  app 'Monolingual.app'
end
