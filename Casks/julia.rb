cask :v1 => 'julia' do
  version '0.3.9'
  sha256 '03a93edeca50411c799033d1475afdaa13411e129ccc56b4dcb36519757e7739'

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
