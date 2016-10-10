cask 'julia' do
  version '0.5.0'
  sha256 '871dd1f309d0b8659980ef0db667a36cf84e5d0febb2d53b70859de3801bdf03'

  # s3.amazonaws.com/julialang was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.major_minor}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'

  depends_on macos: '>= :lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
