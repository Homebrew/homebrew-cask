cask 'julia' do
  version '1.1.1'
  sha256 '2eaee0699ab8cf1bd43ef45eacb1f43f7719e925bdbf916bfa4cfd1a863ee856'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast 'https://github.com/JuliaLang/julia/releases.atom'
  name 'Julia'
  homepage 'https://julialang.org/'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
