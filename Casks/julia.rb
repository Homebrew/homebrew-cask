cask 'julia' do
  version '0.5.0'
  sha256 '871dd1f309d0b8659980ef0db667a36cf84e5d0febb2d53b70859de3801bdf03'

  # s3.amazonaws.com/julialang was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(%r{\.\d+$}, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{[.][0]$}, '')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{[.][0]$}, '')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
