cask :v1 => 'julia' do
  version '0.4.0'
  sha256 '39a2765c7a0e03d798d3cfcce2ca265a1e612a9d8108a87315b040b14f2debff'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(/\.\d+$/, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  depends_on :macos => '>= :lion'

  zap :delete => '~/.julia'
end
