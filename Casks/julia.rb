cask :v1 => 'julia' do
  version '0.3.8'
  sha256 '078afe227d5f429869494376f130b344ff149175dd4656f5abc736af802dfb7d'

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
