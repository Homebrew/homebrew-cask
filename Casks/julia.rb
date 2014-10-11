class Julia < Cask
  version '0.3.1'
  sha256 'd12984305d5f0f18a3def724938396d5c040b25c81f29dbe9bd293f0097b2f0a'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :unknown

  app "Julia-#{version}.app"

  zap :delete => '~/.julia'
end
