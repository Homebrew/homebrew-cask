cask 'julia' do
  version '1.3.0'
  sha256 '861505a3407e5406625e1ec0a72a4fc76fa25608fb08bd3d5f327e8f8fda5740'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
