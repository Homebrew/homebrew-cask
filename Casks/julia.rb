cask :v1 => 'julia' do
  version '0.3.4'
  sha256 'eba64c0f2788ab39565541498fcd3c76625ebdfb9564e3f3ca023e022754c91b'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  zap :delete => '~/.julia'
end
