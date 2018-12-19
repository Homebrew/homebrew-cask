cask 'julia' do
  version '1.0.3'
  sha256 'a097e004908ac6ae1f0b766d3ab062796b41f593c1cdeb54952bfbf10529c7dc'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
