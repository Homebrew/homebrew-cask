cask :v1 => 'julia' do
  version '0.3.6'
  sha256 '1b127a5403918e5838973c5c0f17a518613711dbdcc078def8bad189c3b188df'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  depends_on :macos => '>= 10.7'

  zap :delete => '~/.julia'
end
