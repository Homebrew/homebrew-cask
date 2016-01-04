cask 'julia' do
  version '0.4.2'
  sha256 '9ca3756d43cc10d950fafa6e93dd7f4c6ebeade5edb5307cc1e3217b04f5bbe1'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(%r{\.\d+$}, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  depends_on :macos => '>= :lion'

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  zap :delete => '~/.julia'
end
