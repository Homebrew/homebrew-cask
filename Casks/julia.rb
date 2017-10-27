cask 'julia' do
  version '0.6.1'
  sha256 '600c981780e5c4248e826db8a2e21f73063f4bc775fc66bb482235627f15993a'

  url "https://julialang-s3.julialang.org/bin/osx/x64/#{version.major_minor}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
