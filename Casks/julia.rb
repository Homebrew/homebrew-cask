cask :v1 => 'julia' do
  version '0.3.3'
  sha256 '24df35408e83d38bcf95fcaeefd613beeafe00e2b6d8435f760289c158adc7b9'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"

  zap :delete => '~/.julia'
end
