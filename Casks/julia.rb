cask 'julia' do
  version '0.6.0'
  sha256 '0ad3eb9e52a1c38850d04c833fd2375f588fdc4c48804e976ec7bc9c563bf717'

  url "https://julialang-s3.julialang.org/bin/osx/x64/#{version.major_minor}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
