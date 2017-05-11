cask 'julia' do
  version '0.5.2'
  sha256 'cad1e1c5fff6d386c21964ffd332e13ee3c75f364b2c0212ce035c803c1fffb6'

  # s3.amazonaws.com/julialang was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.major_minor}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
