cask 'julia' do
  version '1.0.1'
  sha256 '4c7d74f5827d84e5cd74d0d65f4ba972c7975a256ede2fd39a669249f611384d'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
