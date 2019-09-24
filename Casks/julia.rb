cask 'julia' do
  version '1.2.0'
  sha256 'c65f3af899571ba8f100f55339a0251a31342c25f33fc500929fd7404ec8e955'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
