cask :v1 => 'julia' do
  version '0.3.4'
  sha256 '34cf0b928f20994a087c0cc550576992bc7abd4cc4e8db206125bb5d04c2ae47'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  zap :delete => '~/.julia'
end
