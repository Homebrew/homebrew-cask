cask 'julia' do
  version '0.6.4'
  sha256 'b2f95e60ea70363d2146caa6c3168bf8f5b249e8be46d992267f3f4957dcd8bf'

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :mountain_lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: '~/.julia'
end
