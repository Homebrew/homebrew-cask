class Julia < Cask
  version '0.3.1'
  sha256 '57e7bf9a54803256eed04c015d92865c8c8823d32caaffe4fff54e6cc89e2f93'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"

  zap :delete => '~/.julia'
end
