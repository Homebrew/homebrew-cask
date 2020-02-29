cask 'julia' do
  version '1.3.1'
  sha256 '6bc0f815a6b533ac9069ed6018c2c4d86208d5ec57c67c254f2f70e8f500107f'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
