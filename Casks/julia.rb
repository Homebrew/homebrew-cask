cask :v1 => 'julia' do
  version '0.3.7'
  sha256 'f83e42c42539518adc639b38a62bb7f0f31e3bfa879e5d43b688f06082556a8c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(/\.\d+$/, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  depends_on :macos => '>= 10.7'

  zap :delete => '~/.julia'
end
