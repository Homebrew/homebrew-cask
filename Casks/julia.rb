cask :v1 => 'julia' do
  version '0.4.1'
  sha256 'bbfbcb5abbe8fd2bbe3a61ae4db1651fb43b6d017316ff70b75a2fd5aa5db9bd'

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
